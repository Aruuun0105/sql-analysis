
-- Drop existing tables if they exist
DROP TABLE IF EXISTS order_items, orders, products, users;

-- Users Table
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    created_at DATE
);

INSERT INTO users (name, email, created_at) VALUES
('Alice', 'alice@example.com', '2023-01-01'),
('Bob', 'bob@example.com', '2023-01-10'),
('Charlie', 'charlie@example.com', '2023-02-05'),
('David', 'david@example.com', '2023-02-15'),
('Eve', 'eve@example.com', '2023-03-01');

-- Products Table
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10,2)
);

INSERT INTO products (name, price) VALUES
('Laptop', 900.00),
('Smartphone', 600.00),
('Tablet', 300.00),
('Headphones', 100.00),
('Mouse', 25.00);

-- Orders Table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO orders (user_id, order_date) VALUES
(1, '2023-03-10'),
(1, '2023-04-15'),
(2, '2023-03-20'),
(3, '2023-03-25'),
(4, '2023-04-01'),
(5, '2023-04-05');

-- Order Items Table
CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 5, 2),
(2, 2, 1),
(3, 3, 2),
(4, 1, 1),
(4, 4, 1),
(5, 5, 3),
(6, 2, 1),
(6, 3, 1);
