# Smart Greenhouse Dashboard - Project Structure

## 📁 Directory Structure

```
Smart-Greenhouse-Dashboard/
├── 📄 index.html                 # Main HTML file
├── 📄 package.json              # Project dependencies and scripts
├── 📄 README.md                 # Project documentation
├── 📄 PROJECT_STRUCTURE.md      # This file - project structure guide
├── 📄 START_HERE.bat            # Quick start batch file
├── 📄 start_smart_farm.bat      # Automated MQTT + Dashboard startup
├── 📁 css/                      # Stylesheets
│   └── 📄 styles.css            # Main CSS file with all styling
├── 📁 js/                       # JavaScript modules
│   ├── 📄 app.js                # Main application logic & navigation
│   ├── 📄 mqtt.js               # MQTT connection and data handling
│   ├── 📄 charts.js             # Chart.js initialization and management
│   └── 📄 ui.js                 # UI interactions and modals
├── 📁 assets/                   # Static assets (images, icons, etc.)
├── 📁 config/                   # Configuration files
│   └── 📄 mosquitto.conf        # MQTT broker configuration
├── 📁 docs/                     # Documentation
│   ├── 📄 README.md             # Detailed documentation
│   ├── 📄 QUICKSTART.md         # Quick start guide
│   └── 📄 TROUBLESHOOTING.md    # Troubleshooting guide
└── 📁 scripts/                  # Utility scripts
    ├── 📄 start-server.bat      # Server startup script
    ├── 📄 start-server.sh       # Linux/Mac server startup
    ├── 📄 test-mqtt.bat         # MQTT connection test
    └── 📄 test-mqtt.sh          # Linux/Mac MQTT test
```

## 🎯 What It Does

The Smart Greenhouse Dashboard is a comprehensive monitoring system designed for **Brassicaceae cultivation** (cabbage family) in **Lucban, Quezon Province, Philippines**. It provides real-time monitoring of:

- 🌡️ **Air Temperature** (SHT45 sensor)
- 💧 **Air Humidity** (SHT45 sensor)  
- 🔆 **Light Intensity** (Light sensor)
- 🧪 **Soil pH Level** (pH sensor)
- 🌱 **Soil Humidity** (Soil moisture sensor)
- 🌡️ **Soil Temperature** (Soil temperature sensor)
- 🌿 **Soil Nutrients** (NPK sensor - Nitrogen, Phosphorus, Potassium)

## 🚀 Key Features

### 📊 **Real-time Monitoring**
- Live sensor data display with color-coded status indicators
- Interactive charts with Chart.js visualization
- Brassicaceae-specific optimal ranges and recommendations

### 📱 **Multi-page Interface**
- **Dashboard**: Real-time monitoring with clickable cards
- **History & Analytics**: Historical data analysis and export
- **Settings**: MQTT configuration, sensor thresholds, and farm management

### 🔧 **Smart Features**
- **Clickable Cards**: Tap any sensor card to scroll to its chart
- **Information Buttons**: Detailed sensor information and management tips
- **Scroll-to-Top**: Quick navigation button
- **Status Indicators**: Good/Warning/Critical status with color coding
- **Recommendations**: Brassicaceae-specific farming advice

### 📈 **Data Management**
- **Data Export**: CSV, JSON, and PDF export functionality
- **Local Storage**: Settings persistence across sessions
- **Historical Tracking**: Min/max ranges and trend analysis
- **Overall Health**: System-wide health assessment

## 🛠️ Technology Stack

### **Frontend**
- **HTML5**: Semantic structure with accessibility features
- **CSS3**: Modern styling with CSS Grid, Flexbox, and animations
- **JavaScript (ES6+)**: Modular architecture with modern features
- **Chart.js**: Interactive data visualization
- **MQTT.js**: Real-time communication with sensors

### **Backend & Communication**
- **MQTT Broker**: Mosquitto for IoT communication
- **WebSocket**: Browser-based MQTT connection
- **Local Storage**: Client-side data persistence

### **Hardware Integration**
- **ESP32**: Microcontroller for sensor data collection
- **SHT45**: Temperature and humidity sensor
- **pH Sensor**: Soil acidity measurement
- **Soil Moisture Sensor**: Water content monitoring
- **Soil Temperature Sensor**: Root zone temperature
- **NPK Sensor**: Nutrient level detection
- **Light Sensor**: Photosynthetic light measurement

## 🎨 **Design Philosophy**

### **Brassicaceae-Optimized**
- Thresholds specifically calibrated for cabbage family crops
- Recommendations tailored for tropical climate (Quezon Province)
- Optimal ranges based on agricultural research

### **User Experience**
- **Responsive Design**: Works on desktop, tablet, and mobile
- **Intuitive Navigation**: Clear visual hierarchy and easy-to-use interface
- **Real-time Feedback**: Immediate status updates and alerts
- **Accessibility**: Color-blind friendly indicators and clear typography

### **Performance**
- **Modular Architecture**: Separated concerns for maintainability
- **Efficient Updates**: Minimal DOM manipulation and optimized chart rendering
- **Error Handling**: Graceful degradation and user feedback

## 🔧 **Development Structure**

### **CSS Organization** (`css/styles.css`)
- CSS Custom Properties (variables) for consistent theming
- Component-based styling with clear naming conventions
- Responsive design with mobile-first approach
- Animation and transition effects for enhanced UX

### **JavaScript Modules**

#### **`js/app.js`** - Application Logic
- Page navigation and routing
- History page functionality
- Data export features
- Settings management and persistence

#### **`js/mqtt.js`** - MQTT Communication
- Connection management and error handling
- Message processing and data parsing
- Status evaluation and recommendations
- Summary statistics and health monitoring

#### **`js/charts.js`** - Data Visualization
- Chart.js initialization and configuration
- Real-time chart updates
- Data point management and optimization

#### **`js/ui.js`** - User Interface
- Modal interactions and information displays
- Scroll-to-top functionality
- Sensor information and management tips
- Event handling and user interactions

## 🌱 **Brassicaceae-Specific Features**

### **Optimal Ranges**
- **Temperature**: 18-25°C (optimal), 15-30°C (warning), <10°C or >35°C (critical)
- **Humidity**: 60-80% (optimal), 50-85% (warning), <40% or >90% (critical)
- **Light**: 15,000-25,000 lux (optimal), 10,000-35,000 lux (warning)
- **Soil pH**: 6.0-7.0 (optimal), 5.5-7.5 (warning), <5.0 or >8.0 (critical)
- **Soil Moisture**: 60-80% (optimal), 50-85% (warning), <40% or >90% (critical)
- **Soil Temperature**: 20-28°C (optimal), 18-30°C (warning), <15°C or >35°C (critical)

### **Smart Recommendations**
- Temperature management for bolting prevention
- Humidity control for disease prevention
- Light optimization for leaf development
- pH adjustment for nutrient availability
- Water management for root health
- Nutrient monitoring for crop quality

## 🚀 **Getting Started**

1. **Run the automated startup**: Double-click `start_smart_farm.bat`
2. **Or manual setup**: 
   - Start MQTT broker: `mosquitto -c config/mosquitto.conf`
   - Open `index.html` in your browser
3. **Configure MQTT**: Enter broker details in Settings page
4. **Connect sensors**: Ensure ESP32 is running and publishing data
5. **Monitor**: Watch real-time data and follow recommendations

## 📋 **File Responsibilities**

- **`index.html`**: Main structure, semantic HTML, external resource loading
- **`css/styles.css`**: All styling, responsive design, animations
- **`js/app.js`**: Application logic, navigation, settings, export
- **`js/mqtt.js`**: Communication, data processing, status evaluation
- **`js/charts.js`**: Visualization, chart management, data updates
- **`js/ui.js`**: User interactions, modals, scroll functionality
- **`config/mosquitto.conf`**: MQTT broker configuration
- **`start_smart_farm.bat`**: Automated startup script

This modular structure ensures maintainability, scalability, and ease of development while providing a comprehensive solution for smart greenhouse management.