using patchtest from '../db/schema';

service hr {
    @odata.draft.enabled
    entity EmployeesWithDraft as projection on patchtest.Employees;

    entity EmployeesWithoutDraft as projection on patchtest.Employees;
}