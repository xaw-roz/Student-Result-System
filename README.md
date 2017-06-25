# Student-Result-System

This project is done in grails 3.2.9

Relations

Student --hasmany-->Semesters

Semester --hasmany-->Subject

Subject --hasmany-->Marks

The admin user can perform CRUD operations on the semester and subjects. The admin can also add marks of the student for particular semester.
The non admin user can check the result of the particular semester and can print the result.

