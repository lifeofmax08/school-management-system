# School Management System - WhatsApp Integration

A comprehensive school management system with WhatsApp Business API integration, designed specifically for Tanzanian schools.

## 🌟 Features

### 📱 WhatsApp Integration
- **Direct Communication**: Send results, announcements, and receive feedback instantly
- **Multi-language Support**: Automatic English/Swahili detection
- **OTP Verification**: Secure result access with 6-digit codes
- **Payment Processing**: Integrated M-Pesa for result access fees
- **Meeting Management**: Schedule and handle RSVPs through WhatsApp

### 🏫 School Management
- **Student Results**: Secure delivery with access control
- **Parent Communication**: Real-time updates and notifications
- **Payment Tracking**: Monitor fees and generate reports
- **Multi-school Support**: Scalable architecture for multiple institutions

### 🔒 Security & Privacy
- **End-to-end Encryption**: Secure message transmission
- **OTP Verification**: Two-factor authentication for sensitive data
- **Data Protection**: Compliant with privacy regulations
- **Audit Logging**: Complete activity tracking

## 🚀 Quick Start

### Prerequisites
- Node.js 16+ 
- PostgreSQL/Supabase
- WhatsApp Business API credentials

### Installation
```bash
# Clone the repository
git clone https://github.com/yourusername/school-management-system.git
cd school-management-system

# Install dependencies
npm install

# Configure environment variables
cp env.example .env
# Edit .env with your credentials

# Start the server
npm start
```

### Environment Configuration
```env
# WhatsApp Business API
WHATSAPP_ACCESS_TOKEN=your_access_token
WHATSAPP_PHONE_NUMBER_ID=your_phone_number_id
WHATSAPP_WEBHOOK_SECRET=your_webhook_secret

# Database (Supabase)
SUPABASE_URL=your_supabase_url
SUPABASE_ANON_KEY=your_supabase_anon_key
SUPABASE_SERVICE_ROLE_KEY=your_service_role_key

# Payment (M-Pesa)
MPESA_CONSUMER_KEY=your_mpesa_consumer_key
MPESA_CONSUMER_SECRET=your_mpesa_consumer_secret
MPESA_PASSKEY=your_mpesa_passkey
```

## 📱 WhatsApp Commands

| Command | Description |
|---------|-------------|
| `help` | Show help menu |
| `results` | Get student results |
| `payment` | Make payment |
| `meeting` | Check meetings |
| `language en` | Set English |
| `language sw` | Set Swahili |

## 🏗️ Architecture

```
┌─────────────────┐    ┌──────────────────┐    ┌─────────────────┐
│   WhatsApp API  │───▶│   Webhook        │───▶│  Message Queue  │
└─────────────────┘    │   Controller     │    │   Service       │
                       └──────────────────┘    └─────────────────┘
                                │                        │
                                ▼                        ▼
                       ┌──────────────────┐    ┌─────────────────┐
                       │  WhatsApp        │    │  Database       │
                       │  Service         │    │  (Supabase)     │
                       └──────────────────┘    └─────────────────┘
                                │
                                ▼
                       ┌──────────────────┐
                       │  Payment         │
                       │  Service         │
                       │  (M-Pesa)        │
                       └──────────────────┘
```

## 🛠️ Technology Stack

- **Backend**: Node.js, Express.js, TypeScript
- **Database**: PostgreSQL (Supabase)
- **WhatsApp**: WhatsApp Business API
- **Payments**: M-Pesa API
- **Authentication**: JWT
- **Monitoring**: Prometheus, Grafana
- **Deployment**: Docker, Nginx

## 📊 API Endpoints

### WhatsApp
- `POST /api/whatsapp/webhook` - Receive messages
- `POST /api/whatsapp/send` - Send message
- `GET /api/whatsapp/templates` - Get templates

### Results
- `GET /api/results/:studentId` - Get student results
- `POST /api/results/send` - Send results via WhatsApp

### Payments
- `POST /api/payments/mpesa/initiate` - Initiate M-Pesa payment
- `POST /api/payments/mpesa/callback` - Payment callback

## 🔧 Development

### Running Tests
```bash
npm test
```

### Code Quality
```bash
npm run lint
npm run format
```

### Database Migrations
```bash
npm run migrate
```

## 📈 Monitoring

The system includes comprehensive monitoring:
- **Health Checks**: `/health`
- **Metrics**: Prometheus endpoints
- **Logging**: Structured logging with Winston
- **Analytics**: WhatsApp usage analytics

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📞 Support

- **Email**: contact@schoolmanagementsystem.com
- **Phone**: +255 XXX XXX XXX
- **Location**: Tanzania

## 🌍 Deployment

### Production Setup
```bash
# Build Docker image
docker build -t school-management-system .

# Run with Docker Compose
docker-compose -f docker-compose.prod.yml up -d
```

### Environment Variables
See `env.example` for all required environment variables.

## 🎯 Roadmap

- [ ] SMS fallback integration
- [ ] Mobile app development
- [ ] Advanced analytics dashboard
- [ ] Multi-language expansion
- [ ] AI-powered responses

---

**Built with ❤️ for Tanzanian schools** 