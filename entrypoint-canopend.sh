#!/bin/bash
set -e

# Display configuration
echo Using following configuration
echo VCAN_INTERFACE: "${VCAN_INTERFACE:=vcan0}"
echo NODE_ID: "${NODE_ID:=0xFF}"
echo TCP_PORT: "${TCP_PORT:=60000}"

# Setting up vcan
echo "Creating vcan..."
ip link add "$VCAN_INTERFACE" type vcan
ip link set up "$VCAN_INTERFACE"
echo "Created vcan"

/app/canopend $VCAN_INTERFACE -i $NODE_ID -c "tcp-$TCP_PORT"