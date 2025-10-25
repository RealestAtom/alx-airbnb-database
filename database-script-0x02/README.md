# 🌱 Airbnb Database — Sample Data (Seed Script)

## 🎯 Objective
Populate the Airbnb database with sample data for testing and demonstration.

---

## 📘 Files
- **seed.sql** — Contains all `INSERT` statements to add example records to the database.

---

## 🧩 Description
This script populates the following tables:
- **User** — 4 users (2 hosts, 2 guests)
- **Property** — 3 listings in different cities
- **Booking** — 3 sample bookings
- **Payment** — 2 completed payments
- **Review** — 2 user reviews
- **Message** — 2 messages between users

---

## ⚙️ How to Run

### Using MySQL:
```bash
mysql -u root -p < database-script-0x02/seed.sql
