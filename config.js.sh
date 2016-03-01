#!/bin/bash

cat >/app/config.js << EOF
'use strict';
angular.module('config', [])
  .constant('config', {
    'endpoint'    : "/api",
    'provider'    : "$PROVIDER",
    'client_id'   : "$CLIENT_ID",
    'gitlab_url'  : "$GITLAB_URL",

    'colors'      : {
      'severity': {
      'BLOCKING'     : '#D8122A',
      'ERROR'        : '#EA680F',
      'DISABLED'     : '#FFBE1E',
      'unknown'      : '#BA2222',
      'configuring'  : '#A6ACA8',
      'waiting'      : '#00AA5A',
      'ready'        : '#00AA5A',
      'negotiating'  : '#00AA5A',
      'authenticated': '#00AA5A',
      'active'       : '#00A1BC',
      'security'     : '#333333',
    }
        },
'severity'    : {
      'BLOCKING'     : 1,
      'ERROR'        : 2,
      'DISABLED'     : 3,
      'configuring'  : 4,
      'waiting'      : 5,
      'ready'        : 5,
      'negotiating'  : 5,
      'authenticated': 5,
      'active'       : 6,
      'security'     : 8,
      'unknown'      : 9
    }
  });
EOF
