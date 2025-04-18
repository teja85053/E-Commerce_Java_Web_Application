# 🛒 E-Commerce Java Web Application

## 📋 Overview
This is a Java-based e-commerce web application built using JSP, Servlets, and JDBC. It provides a complete shopping experience with user registration, product browsing, cart management, and administrative features.

## ✨ Features

### 👤 User Features
- **🔐 Authentication**
  - User registration
  - User login/logout
  - Session management
- **🛍️ Shopping Experience**
  - Browse products
  - Add products to cart
  - View cart
  - Checkout process
- **📊 User Dashboard**
  - View profile
  - Track orders (possibly)

### 👨‍💼 Admin Features
- **📦 Product Management**
  - Add new products
  - Edit existing products
  - Remove products
- **📈 Admin Dashboard**
  - View and manage users
  - Monitor sales (possibly)

## 🔧 Tech Stack

| Layer | Technology |
|-------|------------|
| 🖥️ Frontend | HTML, CSS, JSP |
| ⚙️ Backend | Java Servlets |
| 🗄️ Database | MySQL (via JDBC) |
| 🖧 Server | Apache Tomcat |
| 📦 Packaging | WAR structure |

## 📁 Project Structure

```
📁 project-root/
├── 📁 main/
│   ├── 📁 java/
│   │   ├── 📁 beans/
│   │   │   └── 📄 Product.java
│   │   ├── 📁 ecom/
│   │   │   ├── 📁 dao/
│   │   │   │   └── 📄 DAO.java
│   │   │   └── 📁 reg/
│   │   │       └── 📄 RegisterServlet.java
│   │   ├── 📁 loginpack/
│   │   │   └── 📄 LoginCheck.java
│   │   └── 📁 p1/
│   │       └── 📄 One.java
│   └── 📁 webapp/
│       ├── 📁 images/
│       │   └── [Image files]
│       ├── 📄 index.jsp
│       ├── 📄 login.jsp
│       ├── 📄 register.jsp
│       ├── 📄 AdminHome.jsp
│       ├── 📄 UserHome.jsp
│       ├── 📄 AdminMenu.jsp
│       ├── 📄 UserMenu.jsp
│       ├── 📄 AddProduct.jsp
│       ├── 📄 Products.jsp
│       ├── 📄 AddToCart.jsp
│       ├── 📄 ViewCart.jsp
│       ├── 📄 HomeMenu.jsp
│       ├── 📄 HomeFooter.jsp
│       ├── 📄 HomeCarousel.jsp
│       ├── 📄 db.sql
│       └── 📁 META-INF/
│           └── 📄 MANIFEST.MF
└── 📁 classes/
    ├── 📁 beans/
    ├── 📁 ecom/
    │   ├── 📁 dao/
    │   └── 📁 reg/
    ├── 📁 loginpack/
    └── 📁 p1/
```

## 🧩 Key Components

### 📄 JSP Pages
- **🔐 Authentication**
  - `login.jsp` - Login form
  - `register.jsp` - Registration form
- **📊 Dashboards**
  - `AdminHome.jsp` - Admin dashboard
  - `UserHome.jsp` - User dashboard
- **🧭 Navigation**
  - `AdminMenu.jsp` - Admin navigation menu
  - `UserMenu.jsp` - User navigation menu
  - `HomeMenu.jsp` - General navigation menu
- **🛒 Shopping**
  - `Products.jsp` - Display products
  - `AddToCart.jsp` - Add products to cart
  - `ViewCart.jsp` - View cart contents
- **📦 Product Management**
  - `AddProduct.jsp` - Form to add new products
- **🏗️ Layout**
  - `HomeFooter.jsp` - Footer component
  - `HomeCarousel.jsp` - Product carousel

### ☕ Java Classes
- **📝 Models**
  - `beans/Product.java` - Product entity
- **🗄️ Data Access**
  - `ecom/dao/DAO.java` - Database operations
- **🎮 Controllers**
  - `ecom/reg/RegisterServlet.java` - Registration logic
  - `loginpack/LoginCheck.java` - Authentication logic
- **🔧 Utilities**
  - `p1/One.java` - Helper/utility functions

### 💾 Database
- `db.sql` - Database schema and seed data

## 🚀 Installation and Setup

### 📋 Prerequisites
- JDK 8 or higher
- Apache Tomcat 8.5/9.x
- MySQL 5.7 or higher

### 🗄️ Database Setup
1. Create a new MySQL database
2. Import the schema using the `db.sql` file
   ```
   mysql -u username -p database_name < db.sql
   ```

### 💻 Application Setup
1. **⚙️ Configure Database Connection**
   - Open `DAO.java` and update the database connection parameters:
     ```java
     String dbURL = "jdbc:mysql://localhost:3306/your_database";
     String dbUser = "your_username";
     String dbPassword = "your_password";
     ```

2. **🏗️ Build the Project**
   - If using Eclipse:
     - Create a Dynamic Web Project
     - Copy the source files to their respective directories
     - Export as WAR file
   - If using Maven:
     - Configure the `pom.xml` and run `mvn package`

3. **📤 Deploy the Application**
   - Copy the WAR file to Tomcat's `webapps` directory
   - Alternatively, use Tomcat's manager application to deploy

4. **🚀 Launch the Application**
   - Start Tomcat
   - Access the application at `http://localhost:8080/your-app-name`

## 📖 Usage

### 👤 User Guide
1. Visit the homepage
2. Register a new account via `register.jsp`
3. Log in using credentials
4. Browse products on the product listings
5. Add items to cart
6. View cart and proceed to checkout

### 👨‍💼 Admin Guide
1. Log in with admin credentials
2. Access the admin dashboard
3. Manage products (add, edit, delete)
4. View registered users and other admin functions

## 🚀 Possible Improvements

### 💻 Technical Enhancements
- Implement MVC architecture using Spring MVC or Spring Boot
- Replace JDBC with JPA/Hibernate for better ORM
- Add form validation with JavaScript and server-side validation
- Implement RESTful APIs for better service architecture
- Use connection pooling for database operations

### ✨ Feature Enhancements
- 💳 Payment gateway integration
- 📦 Order tracking system
- ⭐ User reviews and ratings
- 🔍 Product search and filtering
- 💖 Wishlist functionality
- 🏷️ Discount/coupon system

### 🔒 Security Enhancements
- Implement HTTPS
- Add password hashing
- Use prepared statements for SQL queries
- Implement CSRF protection
- Add input validation and sanitization

## 👥 Contributing
Contributions to improve the application are welcome. Please follow these steps:
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## 📝 License
This project is intended for educational purposes and not for production use.
