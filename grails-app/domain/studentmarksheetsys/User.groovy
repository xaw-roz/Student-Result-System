package studentmarksheetsys

class User {
    String username
    String password
    String role
    String name
    static constraints = {
        username blank: false
        password blank: false, minSize: 8
        role blank: false
        name blank: false

    }
}
