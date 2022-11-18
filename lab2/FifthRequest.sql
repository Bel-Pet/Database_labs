use bd2;

select employee.firstName, employee.secondName, employee.thirdName,
 sum(round(employeeCompany.workTime * jobTitle.payment * 21 / 100 * company.сontribut, 1)) as deduction
from employeeCompany
join employee on employee.id = employeeCompany.idEmployee
join jobTitle on jobTitle.id = employeeCompany.idJobTitle
join company on company.id = employeeCompany.idCompany
group by employeeCompany.idEmployee
order by employeeCompany.id;


 