#!/usr/bin/env bash
bundle install
NEXUSUSER=$nexus.username
NEXUSPASS=$nexus.password
GPGPASS=$gpg.passphrase
SLACKKEY=$slack.key

travis encrypt "nexusUsername=$NEXUSUSER nexusPassword=$NEXUSPASS gpgPassphrase=$GPGPASS" --add env
travis encrypt "$SLACKKEY" --add notifications.slack