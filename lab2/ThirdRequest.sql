use bd2;


-- select company.title, a.employeesCount
-- from company
-- left join
-- (select employeeCompany.idCompany ,count(*) as employeesCount
-- from employeeCompany
-- group by employeeCompany.idCompany) a
-- on (a.idCompany = company.id)
-- order by company.title;

