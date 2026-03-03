
//When ever use an existing function or modue, use "Using" keyboard
using btp.db as bd from '../db/data-model';


//Service Definition
@requires : 'authenticated-user'
service ODataServices {
 
 //Enable Create button 
@odata.draft.enabled

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

 //Facet (Sections) - To user enter the data for Create line Items.
 FieldGroup  #BasicDetails : {
     $Type : 'UI.FieldGroupType',
     Data : [
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
     ],
 },

 FieldGroup #AdminData : {
     $Type : 'UI.FieldGroupType',
     Data : [
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
 },

 //Facet - Group the section within one Facet
 Facets  : [
     {
         $Type : 'UI.ReferenceFacet',
         Target : '@UI.FieldGroup#BasicDetails',
         Label : 'Basic Details',
         ID : 'IDBasicData'
     },
     {
         $Type : 'UI.ReferenceFacet',
         Target : '@UI.FieldGroup#AdminData',
         Label : 'Admin Details',
         ID : 'IDAdminData',
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



