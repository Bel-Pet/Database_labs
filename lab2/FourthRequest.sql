use bd2;

select employee.firstName, employee.secondName, employee.thirdName,
 jobTitle.title, company.title, jobTitle.payment
from employeeCompany
join employee on employee.id = employeeCompany.idEmployee
join jobTitle on jobTitle.id = employeeCompany.idJobTitle
join company on company.id = employeeCompany.idCompany
where employeeCompany.appointed < '02-06-12'
group by employeeCompany.idEmployee
order by employeeCompany.id;
 