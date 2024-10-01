CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    full_name VARCHAR(100)
);

CREATE TABLE Blog_Posts (
    post_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    image VARCHAR(255) NOT NULL,
    CONSTRAINT fk_blog_posts_user FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Testimonial (
    testimoni_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    testimoni TEXT NOT NULL,
    image VARCHAR(255),
    CONSTRAINT fk_review_user FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Contact_Messages (
    message_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    subject VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_contact_messages_user FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    description TEXT,
    status VARCHAR(50),
    image VARCHAR(255)
);

CREATE TABLE Services (
    service_id INT AUTO_INCREMENT PRIMARY KEY,
    service_name VARCHAR(100) NOT NULL,
    description TEXT,
    status VARCHAR(50)
);

SET SQL_SAFE_UPDATES = 1;
