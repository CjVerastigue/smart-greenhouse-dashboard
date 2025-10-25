# HTTPS Deployment Fix for MQTT WebSocket Connection

## Problem
When deploying the Smart Greenhouse Dashboard to GitHub Pages (or any HTTPS site), the MQTT WebSocket connection fails with the error:
- "Failed to connect to mqtt broker"
- "Failed to construct websocket: websocket connection may not be initiated from a page loaded over https"

## Root Cause
The application was configured to use insecure WebSocket connections (`ws://`) from pages served over HTTPS. Modern browsers block mixed content connections for security reasons.

## Solution
Updated the MQTT broker configuration to use secure WebSocket connections (`wss://`) with the correct port.

### Changes Made:

1. **Updated Default Broker URL**:
   - Changed from: `ws://broker.emqx.io:8083/mqtt`
   - Changed to: `wss://broker.emqx.io:8084/mqtt`

2. **Enhanced Error Handling**:
   - Added detection for HTTPS pages using insecure WebSocket
   - Added specific error messages for WebSocket security issues
   - Added automatic localStorage cleanup for old insecure URLs

3. **Updated Validation Logic**:
   - Added warnings when HTTPS pages attempt to use `ws://`
   - Enhanced connection error messages to guide users to secure protocols

### Files Modified:
- `index.html` - Updated default broker URLs and validation logic
- `js/mqtt.js` - Enhanced error handling and HTTPS detection

## Testing
After deployment, the application should:
1. Automatically use `wss://broker.emqx.io:8084/mqtt` for secure connections
2. Show appropriate warnings if insecure WebSocket is attempted on HTTPS
3. Successfully connect to the MQTT broker and receive sensor data

## Alternative MQTT Brokers
If the EMQX broker doesn't work, you can try other public MQTT brokers that support secure WebSocket:
- `wss://test.mosquitto.org:8081/mqtt`
- `wss://broker.hivemq.com:8884/mqtt`

## Notes
- Port 8084 is the standard secure WebSocket port for MQTT brokers
- The `/mqtt` path is required for WebSocket MQTT connections
- Username/password authentication is optional but recommended for production use
