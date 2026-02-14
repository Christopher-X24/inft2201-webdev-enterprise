CREATE TABLE IF NOT EXISTS demo_ping (
    id SERIAL PRIMARY KEY,
    message TEXT NOT NULL
);

INSERT INTO demo_ping (message) VALUE ('Postgress is up!');

CREATE TABLE IF NOT EXISTS mail (
    id SERIAL PRIMARY KEY,
    subject TEXT NOT NULL,
    body TEXT NOT NULL
);

-- Optional: insert a default entry for API testing
INSERT INTO mail (subject, body)
VALUES ('Welcome!', 'This is your first mail.')
ON CONFLICT DO NOTHING;