package studentmarksheetsys

class Subject {
    String name
    String sid
    Integer totalmarks
    Integer semester
    static hasMany = [marks:Marks]

    static constraints = {
        name blank: false
        sid nullable: false
        totalmarks nullable: false
        semester nullable: false
        marks nullable: true
        marks cascade: 'all-delete-orphan'
    }
}
