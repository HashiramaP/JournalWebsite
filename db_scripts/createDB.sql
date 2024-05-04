CREATE TABLE IF NOT EXISTS users
(
    username varchar(18) PRIMARY KEY,
    email    varchar(255) UNIQUE KEY,
    password  varchar(255)
);

CREATE TABLE IF NOT EXISTS journal(
    goalID INT AUTO_INCREMENT PRIMARY KEY,
    user varchar(18),
    goalDate date,
    FOREIGN KEY (user) REFERENCES users(username) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS goals(
    goalID INT,
    goalText varchar(255),
    FOREIGN KEY (goalID) REFERENCES journal(goalID) ON DELETE CASCADE
);

CREATE TABLE