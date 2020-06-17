CREATE TABLE "comments" (
    "comments_id" SERIAL PRIMARY KEY,
    "comment" VARCHAR(255),
    "author" VARCHAR REFERENCES "users"(username),
    "user_id" INT REFERENCES "users"(user_id),
    "post_id" INT REFERENCES "posts"(posts_id),
    "date_created" TIMESTAMP
);