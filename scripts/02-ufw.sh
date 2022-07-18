#!/bin/sh

# DigitalOcean Marketplace Image Validation Tool
# © 2021 DigitalOcean LLC.
# This code is licensed under Apache 2.0 license (see LICENSE.md for details)

ufw limit ssh

ufw allow 2222/tcp
ufw limit 2222/tcp

ufw --force enable
