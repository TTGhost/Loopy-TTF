#!/usr/bin/env python2
import json
import os
import requests
from pandac.PandaModules import *


username = os.environ['ttcUsername']
password = os.environ['ttcPassword']
distribution = ConfigVariableString('distribution', 'dev').getValue()

accountServerEndpoint = ConfigVariableString(
    'account-server-endpoint',
    '').getValue()
request = requests.post(
    accountServerEndpoint + 'login/',
    data={'n': username, 'p': password, 'dist': distribution})

try:
    response = json.loads(request.text)
except ValueError:
    print "Couldn't verify account credentials."
else:
    if not response['success']:
        print response['reason']
    else:
        os.environ['TTC_PLAYCOOKIE'] = response['token']

        # Start the game:
        import toontown.toonbase.ClientStart
