CREATE TABLE "users" (
    "user_id" SERIAL PRIMARY KEY,
    "username" VARCHAR(16) UNIQUE,
    "email" VARCHAR(32) NOT NULL,
    "email_verified" BOOLEAN,
    "date_created" DATE,
    "last_login" DATE
);