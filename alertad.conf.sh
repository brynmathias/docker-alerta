#!/bin/bash

cat >/alertad.conf << EOF
DEBUG = True
SECRET_KEY = '$(< /dev/urandom tr -dc A-Za-z0-9_\!\@\#\$\%\^\&\*\(\)-+= | head -c 32)'
BASE_URL = '$BASE_URL'

AUTH_REQUIRED = $AUTH_REQUIRED
ADMIN_USERS = ['$ADMIN_USERS']
CUSTOMER_VIEWS = $CUSTOMER_VIEWS
OAUTH2_CLIENT_ID = '$CLIENT_ID'
OAUTH2_CLIENT_SECRET = '$CLIENT_SECRET'
ALLOWED_EMAIL_DOMAINS = ['$ALLOWED_EMAIL_DOMAIN']
ALLOWED_GITHUB_ORGS = ['$ALLOWED_GITHUB_ORGS']
GITLAB_URL = '$GITLAB_URL'
ALLOWED_GITLAB_GROUPS = ['$ALLOWED_GITLAB_GROUPS']

PLUGINS = ['reject']


SEVERITY_MAP = {
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

EOF
