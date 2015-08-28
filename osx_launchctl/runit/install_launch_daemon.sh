#!/bin/bash

# Runit runs as a system wide LaunchDaemon
sudo rm -f /Library/LaunchDaemons/org.smarden.runit.plist

sudo cp org.smarden.runit.plist \
  /Library/LaunchDaemons/org.smarden.runit.plist

echo "To start the service run:"
echo -e "\tsudo launchctl load -w /Library/LaunchDaemons/org.smarden.runit.plist\n"
echo "To verify the service is running use:"
echo -e "\tsudo launchctl list | grep org.smarden.runit"
