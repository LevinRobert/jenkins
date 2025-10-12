#!/bin/bash
# validate_service.sh
# This script checks if the application is running properly on port 5000

echo "Validating application is running on port 5000..."

# Wait a few seconds to give the app time to start
sleep 15

# Test the application endpoint
STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:5000)

if [ "$STATUS_CODE" -eq 200 ]; then
    echo "Application is running successfully! (HTTP $STATUS_CODE)"
    exit 0
else
    echo "Application failed to respond properly. (HTTP $STATUS_CODE)"
    exit 1
fi
