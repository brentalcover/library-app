CREATE DATABASE IF NOT EXISTS simple_crud;
USE simple_crud;

CREATE TABLE IF NOT EXISTS books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    isbn VARCHAR(20) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    status ENUM('Available', 'Borrowed') DEFAULT 'Available',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO books (title, author, isbn, genre, status) VALUES
('To Kill a Mockingbird', 'Harper Lee', '978-0061120084', 'Fiction', 'Available'),
('1984', 'George Orwell', '978-0451524935', 'Dystopian', 'Borrowed'),
('The Great Gatsby', 'F. Scott Fitzgerald', '978-0743273565', 'Classic', 'Available');