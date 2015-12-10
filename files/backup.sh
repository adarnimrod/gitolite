#!/bin/sh -e
cd /srv/git
tar -cf /var/backups/git.tar.gz repositories
