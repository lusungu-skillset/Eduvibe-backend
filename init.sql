-- Create recordings database
CREATE DATABASE IF NOT EXISTS recordingsdb;

-- Create recordings user and grant privileges
CREATE USER IF NOT EXISTS 'recordings_user'@'%' IDENTIFIED BY 'eduvibe-lms';
GRANT ALL PRIVILEGES ON recordingsdb.* TO 'recordings_user'@'%';
FLUSH PRIVILEGES;
