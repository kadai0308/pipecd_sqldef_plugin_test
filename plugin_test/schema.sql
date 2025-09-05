CREATE TABLE `orders` (
    `order_id` int NOT NULL AUTO_INCREMENT,
    `customer_id` int NOT NULL,
    `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
    `status` enum('pending','shipped','delivered','cancelled') DEFAULT 'pending',
    `total_amount` decimal(10,2) NOT NULL,
    `shipping_address` varchar(255) DEFAULT NULL,
    `billing_address` varchar(255) DEFAULT NULL,
    `payment_method` enum('credit_card','paypal','bank_transfer') NOT NULL,
    `is_paid` tinyint(1) DEFAULT '0',
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`order_id`),
    KEY `idx_customer_id` (`customer_id`),
    KEY `idx_order_date` (`order_date`),
    CONSTRAINT `chk_total_amount` CHECK ((`total_amount` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    published_year INT
);;