CREATE
EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE users
(
    uuid               UUID PRIMARY KEY      DEFAULT uuid_generate_v4(),
    role               VARCHAR(40)  NOT NULL DEFAULT 'user',
    email              VARCHAR(255) NOT NULL UNIQUE,
    password           VARCHAR(255) NOT NULL,
    phone              VARCHAR(20)  NOT NULL UNIQUE,
    phone_verification BOOLEAN               DEFAULT FALSE
);

INSERT INTO users (role, email, password, phone, phone_verification)
VALUES
    ('admin', 'admin@example.com', 'password123', '+1234567890', TRUE),
    ('user', 'user1@example.com', 'password456', '+0987654321', FALSE),
    ('user', 'user2@example.com', 'password789', '+1122334455', TRUE);