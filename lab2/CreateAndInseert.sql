create database bd2;

use bd2;

create table employee (
	id int auto_increment primary key,
	firstName varchar(30) check(firstName != '') not null,
    secondName varchar(30) check(secondName != '') not null,
    thirdName varchar(30) check(thirdName != '') not null,
    address varchar(30) check(address != '') not null
);

create table jobTitle (
	id int auto_increment primary key,
	title varchar(30) check(title != '') not null,
    payment int not null
);

create table company (
	id int auto_increment primary key,
	title varchar(30) check(title != '') not null,
    address varchar(50) check(address != '') not null,
    phone varchar(10) unique check(phone != '') not null,
    сontribut int not null
);

create table employeeCompany (
	id int auto_increment primary key,
	idEmployee int,
    idCompany int,
    appointed date,
    idJobTitle int,
    workTime int not null,
    foreign key(idEmployee) references employee (id) on delete cascade,
    foreign key(idCompany) references company (id) on delete cascade,
    foreign key(idJobTitle) references jobTitle (id) on delete cascade
);

insert employee(firstName, secondName, thirdName, address)
values
('Ivanov', 'Sergej', 'Petrovich', 'Morskoj prospekt 12'),
('Ustinov','Oleg', 'Viktorovich', 'Krasnyj prospekt 20'),
('Kim','Dmitrij', 'Konstantinovich', 'Ul Pirogova 20'),
('Markova','Ekaterina', 'Andreevna', 'Ul Furmanova 12'),
('Sidorov','Aleksej', 'Andreevich', 'Ul Geroev truda'),
('Akopjan','Vasilij', 'Ilich ',	'Ul Gogolja');

insert jobTitle(title, payment)
values
('Bujgalker', 25),
('Inzhener', 40),
('Programmist',	60),
('Povar', 20),
('Barmen', 15),
('Menedzher', 70);

insert company(title, address, phone, сontribut)
values
('Artehk', 'Novosibirsk Metro Krasnyj prospekt', '23-23-45', 10),
('Ajron', 'Moskva Taganskaja 9', '345-23-21', 15),
('Gotti', 'Novosibirsk  Ploschad Kondratjuka', '34-23-12',	12),
('Landor', 'Novosibirsk  Mikrorajon Sch', '43-78-90',	10);

insert employeeCompany(idEmployee, idCompany, appointed, idJobTitle, workTime)
values
(1, 1, '02-05-22', 2,	8),
(2,	1, '02-05-26', 1,	6),
(3,	2, '02-06-10', 3,	8),
(4,	3, '02-05-10', 4,	6),
(5,	3, '02-06-20', 5,	10),
(6,	4, '02-07-30', 6,	8),
(1,	1, '02-07-29', 6,	8),
(3,	2, '02-12-17', 6,	8);