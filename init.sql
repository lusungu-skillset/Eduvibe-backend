-- init.sql

-- Default user/auth database
CREATE DATABASE IF NOT EXISTS usersdb;

-- Recordings database
CREATE DATABASE IF NOT EXISTS recordingsdb;

-- Ensure the same app user has privileges on both
CREATE USER IF NOT EXISTS 'eduvibe'@'%' IDENTIFIED BY 'eduvibe-lms';
GRANT ALL PRIVILEGES ON usersdb.* TO 'eduvibe'@'%';
GRANT ALL PRIVILEGES ON recordingsdb.* TO 'eduvibe'@'%';

FLUSH PRIVILEGES;
