
namespace btp.db;

//Aspect - is reusable entity block
using { cuid, managed } from '@sap/cds/common';


//Table, Structure, View – Start with entity and definition must be in Curly Braces
entity Employee : cuid, managed{
    EMPLOYEEID : Integer;
    NAME : String (80);
    AGE : Integer;
    EMAIL : String(250);
}

//Annotations – Used to enable enhancement capability. These include all elements that start with ‘@’, such as @Title, @Mandatory, @ValueHelp, etc.
entity EmpDepartment: cuid, managed {

    EMPID: Integer;
    DeptName : String(40) @title : 'Department'

}
