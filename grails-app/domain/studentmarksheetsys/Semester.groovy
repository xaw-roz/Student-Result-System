package studentmarksheetsys

class Semester {
    Integer sem
    static hasMany = [subjects:Subject]
    static constraints = {
        sem nullable: false
        subjects nullable: true
        subjects cascade: 'all-delete-orphan'

    }
}
