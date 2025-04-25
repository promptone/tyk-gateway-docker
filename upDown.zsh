#!/bin/zsh
# filepath: /usr/local/src/projects/promptone/tyk-gateway-docker/upDown.zsh

# Check if exactly one argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <up|down>"
    exit 1
fi

# Get the argument
ACTION=$1

# Perform action based on the argument
case "$ACTION" in
    up)
        echo "Starting docker-compose in detached mode..."
        docker-compose up -d
        ;;
    down)
        echo "Stopping docker-compose..."
        docker-compose down
        ;;
    *)
        echo "Invalid argument: $ACTION. Use 'up' or 'down'."
        exit 1
        ;;
esac

echo "Operation '$ACTION' completed."
exit 0