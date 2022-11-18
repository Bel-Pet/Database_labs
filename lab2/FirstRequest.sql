use bd2;


 
select  employee.firstName, employee.secondName, employee.thirdName,
 jobTitle.title, company.title, employeeCompany.appointed
from employeeCompany, employee, jobTitle, company
where employee.id = employeeCompany.idEmployee and jobTitle.id = employeeCompany.idJobTitle and company.id = employeeCompany.idCompany
group by employeeCompany.idEmployee
order by company.title;