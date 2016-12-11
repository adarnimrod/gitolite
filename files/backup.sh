#!/bin/sh
set -eu
cd /srv/git
tar -cf /var/backups/git.tar.gz repositories
