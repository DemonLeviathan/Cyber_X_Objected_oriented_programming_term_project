CREATE database Computer_club

-- code, surname, name, phone number
-- number, code, name, type of service, payment type, time

CREATE table Client_Info(
	client_code int primary key not null,
	client_surname nvarchar(20) not null,
	client_name nvarchar(20),
	phone_number nvarchar(20),  
);

CREATE table Service_Info(
	service_code int primary key not null,
	client_code int foreign key references Client_Info(client_code) not null,
	service_name nvarchar(25) check(service_name in ('place with computer for game', 'place with wi-fi', 'computer for work/other')) not null,
	payment_type nvarchar(15) check(payment_type in ('subscription', 'bank card', 'cash')) not null,
	service_time smallint,
);

