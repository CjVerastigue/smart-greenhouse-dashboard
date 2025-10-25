# 🌱 Smart Greenhouse Dashboard

A comprehensive real-time monitoring system for **Brassicaceae cultivation** (cabbage family) designed specifically for **Lucban, Quezon Province, Philippines**. This dashboard provides intelligent monitoring, data visualization, and farming recommendations for optimal crop growth.

![Dashboard Preview](https://img.shields.io/badge/Status-Production%20Ready-green) ![Version](https://img.shields.io/badge/Version-2.0-blue) ![License](https://img.shields.io/badge/License-MIT-yellow)

## 🎯 Features

### 📊 **Real-time Monitoring**
- **Air Temperature & Humidity** (SHT45 sensor)
- **Light Intensity** measurement and analysis
- **Soil pH Level** monitoring for nutrient availability
- **Soil Humidity** for optimal water management
- **Soil Temperature** for root zone health
- **NPK Nutrients** (Nitrogen, Phosphorus, Potassium) tracking

### 🎨 **Interactive Dashboard**
- **Multi-page Interface**: Dashboard, History & Analytics, Settings
- **Clickable Cards**: Tap any sensor card to view its detailed chart
- **Information Buttons**: Detailed sensor information and management tips
- **Real-time Charts**: Live data visualization with Chart.js
- **Status Indicators**: Color-coded Good/Warning/Critical status
- **Smart Recommendations**: Brassicaceae-specific farming advice

### 📱 **Responsive Design**
- **Mobile-First**: Optimized for all device sizes
- **Touch-Friendly**: Easy navigation on tablets and phones
- **Accessibility**: Color-blind friendly indicators and clear typography
- **Modern UI**: Beautiful gradients, animations, and smooth transitions

### 📈 **Data Management**
- **Historical Analysis**: Track trends and patterns over time
- **Data Export**: CSV, JSON, and PDF export functionality
- **Local Storage**: Settings persistence across sessions
- **Health Monitoring**: Overall system health assessment
- **Performance Metrics**: Comprehensive analytics and insights

## 🛠️ Technology Stack

### **Frontend**
- **HTML5** - Semantic structure with accessibility features
- **CSS3** - Modern styling with Grid, Flexbox, and animations
- **JavaScript (ES6+)** - Modular architecture with modern features
- **Chart.js** - Interactive data visualization
- **MQTT.js** - Real-time IoT communication

### **Backend & Communication**
- **MQTT Broker** (Mosquitto) - IoT message handling
- **WebSocket** - Browser-based real-time communication
- **Local Storage** - Client-side data persistence

### **Hardware Integration**
- **ESP32** - Microcontroller for sensor data collection
- **SHT45** - High-precision temperature and humidity sensor
- **pH Sensor** - Soil acidity measurement
- **Soil Moisture Sensor** - Water content monitoring
- **Soil Temperature Sensor** - Root zone temperature
- **NPK Sensor** - Nutrient level detection
- **Light Sensor** - Photosynthetic light measurement

## 🌱 Brassicaceae-Specific Optimization

### **Optimal Ranges for Cabbage Family**
- **Temperature**: 18-25°C (optimal) | 15-30°C (warning) | <10°C or >35°C (critical)
- **Humidity**: 60-80% (optimal) | 50-85% (warning) | <40% or >90% (critical)
- **Light**: 15,000-25,000 lux (optimal) | 10,000-35,000 lux (warning)
- **Soil pH**: 6.0-7.0 (optimal) | 5.5-7.5 (warning) | <5.0 or >8.0 (critical)
- **Soil Moisture**: 60-80% (optimal) | 50-85% (warning) | <40% or >90% (critical)
- **Soil Temperature**: 20-28°C (optimal) | 18-30°C (warning) | <15°C or >35°C (critical)

### **Smart Recommendations**
- **Temperature Management**: Bolting prevention strategies
- **Humidity Control**: Disease prevention techniques
- **Light Optimization**: Leaf development enhancement
- **pH Adjustment**: Nutrient availability optimization
- **Water Management**: Root health maintenance
- **Nutrient Monitoring**: Crop quality assurance

## 🚀 Quick Start

### **Option 1: Automated Setup (Recommended)**
1. **Double-click** `start_smart_farm.bat`
2. **Wait** for MQTT broker to start and dashboard to open
3. **Configure** your ESP32 sensors to publish to the MQTT topics
4. **Start monitoring** your greenhouse!

### **Option 2: Manual Setup**
1. **Start MQTT Broker**:
   ```bash
   mosquitto -c config/mosquitto.conf
   ```
2. **Open Dashboard**:
   ```bash
   # Open index.html in your web browser
   start index.html
   ```
3. **Configure MQTT**: Enter broker details in Settings page
4. **Connect Sensors**: Ensure ESP32 is running and publishing data

## 📁 Project Structure

```
Smart-Greenhouse-Dashboard/
├── 📄 index.html                 # Main HTML file
├── 📁 css/
│   └── 📄 styles.css            # All styling and responsive design
├── 📁 js/
│   ├── 📄 app.js                # Application logic & navigation
│   ├── 📄 mqtt.js               # MQTT communication & data handling
│   ├── 📄 charts.js             # Chart.js visualization
│   └── 📄 ui.js                 # UI interactions & modals
├── 📁 config/
│   └── 📄 mosquitto.conf        # MQTT broker configuration
├── 📁 docs/                     # Documentation
├── 📁 scripts/                  # Utility scripts
└── 📄 start_smart_farm.bat      # Automated startup script
```

## 🔧 Configuration

### **MQTT Topics**
The dashboard subscribes to these MQTT topics:
- `greenhouse/temperature` - Air temperature (°C)
- `greenhouse/humidity` - Air humidity (%)
- `greenhouse/light` - Light intensity (lux)
- `greenhouse/ph` - Soil pH level
- `greenhouse/soil_humidity` - Soil moisture (%)
- `greenhouse/soil_temperature` - Soil temperature (°C)
- `greenhouse/nitrogen` - Nitrogen levels (mg/kg)
- `greenhouse/phosphorus` - Phosphorus levels (mg/kg)
- `greenhouse/potassium` - Potassium levels (mg/kg)

### **ESP32 Integration**
Use the provided ESP32 code to connect your SHT45 sensor and publish data to the MQTT broker. The code includes:
- WiFi connection management
- MQTT client setup
- Sensor data reading and publishing
- Error handling and reconnection logic

## 📊 Dashboard Pages

### **🏠 Dashboard (Homepage)**
- Real-time sensor monitoring
- Interactive charts and graphs
- Status indicators and recommendations
- Clickable cards for detailed views
- System health overview

### **📊 History & Analytics**
- Historical data visualization
- Time range filtering (1h, 6h, 24h, 7d, 30d)
- Data export functionality (CSV, JSON, PDF)
- Performance metrics and trends
- Advanced analytics

### **⚙️ Settings & Farmer Information**
- MQTT connection configuration
- Sensor calibration and thresholds
- Plant and crop management
- Automation settings
- Farm information and notes

## 🌟 Key Benefits

### **For Farmers**
- **Increased Yield**: Optimal growing conditions monitoring
- **Disease Prevention**: Early warning systems for plant health
- **Resource Optimization**: Efficient water and nutrient management
- **Data-Driven Decisions**: Historical analysis for better planning
- **Remote Monitoring**: Access from anywhere with internet

### **For Agricultural Consultants**
- **Comprehensive Data**: Detailed environmental monitoring
- **Trend Analysis**: Long-term pattern identification
- **Recommendation Engine**: Science-based farming advice
- **Export Capabilities**: Easy data sharing and reporting
- **Scalable Solution**: Adaptable to different farm sizes

## 🔒 Security & Privacy

- **Local Data Storage**: All settings stored locally in browser
- **No Cloud Dependencies**: Complete local operation
- **MQTT Authentication**: Secure broker connection
- **Data Privacy**: No external data transmission
- **Offline Capable**: Works without internet connection

## 🤝 Contributing

We welcome contributions! Please see our contributing guidelines:

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/AmazingFeature`)
3. **Commit** your changes (`git commit -m 'Add some AmazingFeature'`)
4. **Push** to the branch (`git push origin feature/AmazingFeature`)
5. **Open** a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **Chart.js** for beautiful data visualization
- **MQTT.js** for reliable IoT communication
- **Mosquitto** for the robust MQTT broker
- **Brassicaceae Research Community** for agricultural insights
- **Quezon Province Farmers** for real-world testing and feedback

## 📞 Support

- **Documentation**: Check the `docs/` folder for detailed guides
- **Issues**: Report bugs and request features via GitHub Issues
- **Community**: Join our agricultural technology discussions
- **Email**: Contact us for commercial support and custom solutions

---

**Built with ❤️ for sustainable agriculture in the Philippines**

*Empowering farmers with technology for better crop yields and sustainable farming practices.*