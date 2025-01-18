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
	'$2b$12$.ERWnB/Fru3vWhONpDL5eO3cI.W46wX2I4/8McNV5HtvIpzG1Tpay',
  role_id
FROM
	roles
WHERE
	name LIKE 'Admin';