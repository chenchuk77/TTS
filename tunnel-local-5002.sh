#!/bin/bash

# This script is used to create a tunnel from the local machine to the remote
# machine. The tunnel is created on port 5002 on the local machine and is
# connected to port 5002 on the remote machine.

# usage: ./tunnel-local-5002.sh

# then you can test the connection by running the following command:
# nc -vz localhost 5002

# The connection string to the remote machine
CONNECTION_STRING="ssh root@38.110.4.130 -p 11446 -i ~/.ssh/id_ed25519"

# The port on the remote machine to connect to
REMOTE_PORT=5002

# The port on the local machine to listen on
LOCAL_PORT=5002

# Create the tunnel
$CONNECTION_STRING -L $LOCAL_PORT:localhost:$REMOTE_PORT -N -f

# Check if the tunnel was created successfully
if [ $? -eq 0 ]; then
  echo "Tunnel created successfully"
else
  echo "Failed to create tunnel"
fi

# End of script
