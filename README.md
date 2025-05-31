# 👨‍👩‍👧‍👦 Happy Family ![on progress](https://img.shields.io/badge/on%20progress-blue)


[![Laravel](https://img.shields.io/badge/Laravel-10.x-red?style=flat&logo=laravel&logoColor=white)](https://laravel.com/)  [![PostgreSQL](https://img.shields.io/badge/PostgreSQL-blue?style=flat&logo=postgresql&logoColor=white)](https://www.postgresql.org/)  ![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white)

**Happy Family** is a personal family management application built with Laravel and Livewire. It helps families manage and record life events, financial transactions, owned assets, and debts in a centralized and organized way. Whether you're keeping track of your family's history or monthly expenses, this app makes it easier and more meaningful.

---

## 📦 Features

- **🧬 Life History Tracker**  
  Record personal milestones, important events, and historical data per family member.

- **💸 Expense Management**  
  Log daily expenses, categorize them, and monitor monthly spending.

- **🏠 Asset Tracker**  
  Keep an inventory of assets (land, vehicles, electronics, etc.) with relevant details.

- **📊 Debt & Loan Tracking**  
  Manage debts and receivables clearly, including due dates and payment history.

- **👥 Multi-member Support**  
  Track and manage data per individual family member.

- **🔐 Secure & Private**  
  Your data stays private – hosted by you, controlled by you.

---

## 🛠 Tech Stack

| Layer         | Technology         |
|---------------|--------------------|
| Framework     | Laravel 10 + Livewire |
| Language      | PHP 8.x             |
| Frontend      | Blade, Tailwind CSS, Alpine.js |
| Database      | PostgreSQL          |
| Auth & Security | Laravel Sanctum / Laravel Breeze |

---

## 🚀 Getting Started

### Prerequisites

Make sure you have the following installed:

- PHP >= 8.1  
- Composer  
- PostgreSQL  
- Node.js & npm  
- Git  

### Step-by-step Installation

1. Clone the repository
```bash
git clone https://github.com/romtoni/HappyFamily.git
cd happy-family
```

2. Install PHP dependencies
```bash
composer install
```

3. Copy the example environment file
```bash
cp .env.example .env
```
4. Generate application key
```bash
php artisan key:generate
```

## ⚙️ Configure PostgreSQL

Edit your .env file:

```bash
DB_CONNECTION=pgsql
DB_HOST=127.0.0.1
DB_PORT=5432
DB_DATABASE=happy_family
DB_USERNAME=your_pg_user
DB_PASSWORD=your_pg_password
```

Then run migrations and seeders:
```bash
php artisan migrate --seed
```
Install and build frontend assets:
```bash
npm install && npm run dev
```
Finally, start the local development server:
```bash
php artisan serve
```
Visit http://localhost:8000 in your browser.

## 🧪 Demo Data

Optional demo data can be provided through seeders. You can modify or add your own in the database/seeders/ directory.

## 📸 Screenshots

    Screenshots will be added soon.

## 📂 Project Structure
```bash
happy-family/
├── app/
├── bootstrap/
├── config/
├── database/
│   ├── migrations/
│   ├── seeders/
├── public/
├── resources/
│   ├── views/
│   ├── livewire/
├── routes/
│   └── web.php
├── .env
├── composer.json
└── package.json
```

## 📌 To-Do & Roadmap

- PostgreSQL support

- Modular design per family member

- File uploads for documents (e.g., certificates, receipts)

- Mobile-friendly responsive layout

- Role-based access (Admin, Member, Viewer)

- Calendar integration for events and reminders

## 🤝 Contributing

Contributions are welcome!

To contribute:

1. Fork the repository

2. Create a new branch (git checkout -b feature/feature-name)

3. Make your changes

4. Commit and push (git commit -am 'Add new feature' && git push)

5. Create a Pull Request

Please follow PSR-12 and Laravel best practices when contributing.

## 📃 License

This project is licensed under the MIT License.


## 🙏 Acknowledgements

- Laravel Team
- Tailwind CSS & Livewire Contributors
- PostgreSQL Community
- And all open-source heroes 🙌

Build a better, more organized family life with Happy Family!
