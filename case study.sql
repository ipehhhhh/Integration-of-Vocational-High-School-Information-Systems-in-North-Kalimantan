use employees;

-- jumlah pegawai wanita 
select count(emp_no) as 'jumlah pegawai wanita' from employees
where gender = 'F';

-- total pegawai berdasarkan gender 
select gender, count(emp_no) from employees
group by gender;

-- siapa saja yang memiliki rata2 penghasilan diatas 140000 
select e.first_name as 'nama', avg(s.salary) as 'rata-rata_gaji' 
from employees e, salaries s
where e.emp_no = s.emp_no
group by e.emp_no
having avg(s.salary) > 140000;

-- siapa saja yang menerima gaji lebih dari 17 kali
select s.emp_no, e.first_name as 'nama', count(s.salary) as 'rata-rata_gaji' 
from employees e, salaries s
where e.emp_no = s.emp_no
group by s.emp_no
having count(s.salary) > 17;

--  berapa kali tsutomu menerima gaji diatas 140000
select e.emp_no, e.first_name, count(s.salary) 
from employees e, salaries s
where e.emp_no = s.emp_no and e.emp_no = 109334 and s.salary > 140000
group by e.emp_no
having count(s.salary);

select s.emp_no, s.salary from salaries s
where s.emp_no = 12149;
