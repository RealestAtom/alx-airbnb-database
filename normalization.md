# 📘 Database Normalization — ALX Airbnb Project

## 🎯 Objective
Apply normalization principles to ensure the database schema is in the **Third Normal Form (3NF)**.

---

## 🧩 Step 1: Review of Entities

The database contains the following entities:
- User
- Property
- Booking
- Payment
- Review
- Message

Each table was reviewed to ensure it satisfies the requirements for 1NF, 2NF, and 3NF.

---

## 🧮 Step 2: Normalization Process

### **First Normal Form (1NF)**
- Each table has a primary key.
- Each field contains atomic (single) values.
- There are no repeating groups or arrays.

✅ All tables satisfy 1NF.

---

### **Second Normal Form (2NF)**
- Each non-key attribute is fully dependent on the table’s primary key.
- No partial dependencies exist.

✅ All tables satisfy 2NF.

---

### **Third Normal Form (3NF)**
- The database is in 2NF.
- No transitive dependencies exist (non-key attributes do not depend on other non-key attributes).

✅ All tables satisfy 3NF.

---

## 🧱 Step 3: Example Analysis

| Table | Primary Key | 3NF Check | Explanation |
|--------|--------------|------------|--------------|
| User | user_id | ✅ | All user details depend only on user_id |
| Property | property_id | ✅ | Each property attribute depends only on property_id |
| Booking | booking_id | ✅ | Booking details depend only on booking_id |
| Payment | payment_id | ✅ | Payment info depends only on payment_id |
| Review | review_id | ✅ | Each review depends only on review_id |
| Message | message_id | ✅ | Each message depends only on message_id |

---

## ✅ Conclusion
All database entities in the **ALX Airbnb Database** meet the requirements of the **Third Normal Form (3NF)**.  
This ensures minimal redundancy, data consistency, and improved integrity across the system.

---

### 🧑‍💻 Author
**Evans**  
*ALX Airbnb Database Project*
