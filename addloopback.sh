#!/bin/bash

# https://gist.github.com/krknopp/80720dc28e13a95f1704d33a5dbb174f

echo "<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
      <key>Label</key>
      <string>com.runlevel1.lo0.192.168.237.237</string>
      <key>RunAtLoad</key>
      <true/>
      <key>ProgramArguments</key>
      <array>
          <string>/sbin/ifconfig</string>
          <string>lo0</string>
          <string>alias</string>
          <string>192.168.237.237</string>
      </array>
      <key>StandardErrorPath</key>
      <string>/var/log/loopback-alias.log</string>
      <key>StandardOutPath</key>
      <string>/var/log/loopback-alias.log</string>
  </dict>
</plist>" | sudo tee /Library/LaunchDaemons/com.runlevel1.lo0.192.168.237.237.plist

chmod 0644 /Library/LaunchDaemons/com.runlevel1.lo0.192.168.237.237.plist

sudo chown root:wheel /Library/LaunchDaemons/com.runlevel1.lo0.192.168.237.237.plist

sudo launchctl load /Library/LaunchDaemons/com.runlevel1.lo0.192.168.237.237.plist
