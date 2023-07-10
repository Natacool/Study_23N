--GT SUMMARY from 07.07.2023

-- Задача 1. 
--Выведите имена и фамили сотрудников. Софрмируйте новый атррибут employee_flag,
--который ссылается на значение бинарного типа согласно условию:
--Если employee_id будет меньше 150 - тогда необходимо сформировать значение 0.
--В противном случае значение 1

SELECT  first_name, last_name,

		CASE
	    	WHEN employee_id < 150 THEN 0
        ELSE 1
    END AS employee_flag

FROM employees;


-- --------------
-- Задача 2.
-- Выведите имена и фамили сотрудников. Софрмируйте новый атррибут employee_name, 
-- которое будет проверять, если ли в имени буква 'a' или 't'. Если такая буква есть, 
-- необходимо сформировать значение 'yes', в противном случае значение 'no'

SELECT  first_name, last_name,

		CASE
	    	WHEN first_name like '%a%' OR '%t%' first_name like THEN 'yes'
        ELSE 'no'
    END AS employee_name

FROM employees;

-- --------------
-- Задача 3.
-- Выведите имена и фамили сотрудников. Сформируйте новый атрибут salary, который будет
-- сссылаться на значение зарплаты сотрудников по условию. Если у сотриднка есть процент вознагрождения, то его в зарлпате необходимо учесть
-- Если у сотрудника нет доп. вознагрождения, тогдла оставить текущую зарплату

SELECT  first_name, last_name, 

		CASE
	    	WHEN commission_pct is not null THEN salary+salary*commission_pct 
        ELSE salary 
    END AS final_salary

FROM employees;

-- Задача 4.
-- Выведите имена и фамили сотрудников. Сформируйте новый атрибут is_rich, который будет проверять 
-- дейсвтительно ли зарплата сотрудника за год будет превышать 100000 условных единиц. Если это так, 
-- новый атрибут должен сформировать значение true, в противном случае false

SELECT  first_name, last_name, 

		CASE
	    	WHEN  salary*12  >= 100000 THEN 'true'
        ELSE 'false'
    END AS is_rich

FROM employees;


-- --------------
-- Задача 5.
-- Выведите имена и фамили сотрудников. Сформируйте новый атрибут employee_descr
-- Сфомрируйте следжующую проверку для атрибута: Если значение employee_id не будет делиться на 2 без остатка, 
-- тогда необходимо сформировать значение 'not even', в противном случае нужно проверить, если у числа вычисляется квадратный корень,
-- тогда необходимо сформировать значение 'is root', в противном случае 'even'


SELECT  first_name, last_name, employee_id,

		CASE
	    	WHEN  employee_id %2 =1 THEN 'not even'
            else case
                  WHEN  sqrt(employee_id) = round (sqrt(employee_id))  THEN 'is root'      
                  ELSE 'even'
                   end
    END AS employee_descr

FROM employees;
--/////////////////////////////
--case example:

Update Products
Set
	Price = CASE
	    WHEN Price >= 100 THEN Price * .9
		WHEN Price >= 50 THEN Price * .85
        else Price
       end;
--///////////////////////////////////






 
 