package studentmarksheetsys

class Marks {
    Integer marks
    String roll

    static constraints = {
        marks nullable: false
        roll nullable: false
    }
}
