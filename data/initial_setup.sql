INSERT INTO
	roles (NAME)
VALUES
	('Admin'),
	('User') 
ON CONFLICT DO NOTHING;

INSERT INTO
	users (name, email, password_hash, role_id)
SELECT
	'Eleazar Fig',
	'eleazar.fig@example.com',
	'$2b$12$niAxaqzMGN6za9iAyk28h.dtd3gp6KL5QbTQ9rGyUa26bczM12dCS',
  role_id
FROM
	roles
WHERE
	name LIKE 'Admin';