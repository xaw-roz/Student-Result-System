package studentmarksheetsys

class Student {
    String name
    String batch
    String roll
    String address
    String email
    static hasMany = [semesters: Semester]


    static constraints = {
        name blank: false
        batch blank: false
        roll blank: false,unique: true
        address blank: false
        email email: true, blank: false
        semesters nullable: true
        semesters cascade: 'replicate'
    }

}
