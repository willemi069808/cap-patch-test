namespace patchtest;

using {cuid} from '@sap/cds/common';

entity Employees : cuid {
    firstname : String  @title : 'First name';
    age       : Integer @title : 'Age';
}

annotate Employees with @(UI : {
    Identification : [{Value : ID}],
    HeaderInfo     : {
        TypeName       : 'Employee',
        TypeNamePlural : 'Employees'
    },
    LineItem       : [
    {Value : ID},
    {Value : firstname},
    {Value : age}
    ]
});
