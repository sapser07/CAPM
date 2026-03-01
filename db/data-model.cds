
namespace btp.db;



//Table, Structure, View – Start with entity and definition must be in Curly Braces
entity Employee {
    Key EMPLOYEEID : Integer;
    NAME : String (80);
    AGE : Integer;
    EMAIL : String(250);
}

entity EmpDepartment {

    key EMPID: Integer;
    DeptName : String(40);
    
}
