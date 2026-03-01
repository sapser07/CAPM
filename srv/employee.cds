
//When ever use an existing function or modue, use "Using" keyboard
using btp.db as bd from '../db/data-model';

//Service Definition
service ODataServices {
 
//Expose Entity like Employee
entity EmployeeColl as select from bd.Employee;

entity DeptColl as select from bd.EmpDepartment;

}