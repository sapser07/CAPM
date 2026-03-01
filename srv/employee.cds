
//When ever use an existing function or modue, use "Using" keyboard
using btp.db as bd from '../db/data-model';

//Service Definition
service ODataServices {
 
 //Enable Create button 

//Expose Entity like Employee
entity EmployeeColl as select from bd.Employee;

entity DeptColl as select from bd.EmpDepartment;

}

//Annotations – Used to enable enhancement capability. These include all elements that start with ‘@’, such as @Title, @Mandatory, @ValueHelp, etc.

annotate ODataServices.EmployeeColl with @( //Design Level Annotation
//Add Columns
UI: {
 LineItem  : [
     {
         $Type : 'UI.DataField',
         Value : EMPLOYEEID,
     },
     {
         $Type : 'UI.DataField',
         Value : NAME,
     },
     {
         $Type : 'UI.DataField',
         Value : AGE,
     },
     {
         $Type : 'UI.DataField',
         Value : EMAIL,
     },
     {
         $Type : 'UI.DataField',
         Value : createdBy,
     },
     {
         $Type : 'UI.DataField',
         Value : createdAt,
     },
     {
         $Type : 'UI.DataField',
         Value : modifiedBy,
     },
     {
         $Type : 'UI.DataField',
         Value : modifiedAt,
     },
 ],
}

)

{// Property Level Annotation
  EMPLOYEEID @title : 'Employee ID';
  NAME @title : 'Name';
  AGE @title : 'Age';
  EMAIL @title : 'E-Mail ID';
}
