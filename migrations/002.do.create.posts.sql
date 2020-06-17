CREATE TABLE "posts" (
    "posts_id" SERIAL PRIMARY KEY,
    "title" VARCHAR(255) NOT NULL,
    "body" VARCHAR NOT NULL,
    "user_id" INT references "users"(user_id) ON DELETE CASCADE NOT NULL
);