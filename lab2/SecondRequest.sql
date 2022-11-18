use bd2;


-- update jobTitle
-- set payment = payment / 2
-- where title = 'Programmist' or title = 'Menedzher';

select employee.firstName, employee.secondName, employee.thirdName,
 jobTitle.title, company.title, employeeCompany.appointed
from employeeCompany
join employee on employee.id = employeeCompany.idEmployee
join jobTitle on jobTitle.id = employeeCompany.idJobTitle
join company on company.id = employeeCompany.idCompany
where jobTitle.title = 'Programmist' or jobTitle.title = 'Menedzher'
-- group by employeeCompany.idEmployee
order by employeeCompany.id;

select title, payment
from jobTitle;
