package studentmarksheetsys

class SubjectController {

    def index() {
        if(session['user']==null)
        {
            redirect(url: "/user/login")
        }
        def subjects=Subject.getAll()
        [subjects:subjects]
    }
    def save(){
        if(session['user']==null)
        {
            redirect(url: "/user/login")
        }
        def semester=Semester.findById(params.semester)

        def subject=new Subject(params)
        println("in subject save")
        if(subject.validate()) {
           def subid=(subject.save(flush: true, failOnError: true))

            def sub=Subject.findById(subid.getId())

            semester.addToSubjects(sub)
            semester.save(flush: true,failOnError: true)
            flash.message="Subject added successfully"
//            def semestera=Semester.findBySem(params.semester)
//            println(semester.sem+" r  "+sub.id+" s s "+semestera.subjects.getAt(0).name)
            redirect action: "index"
        }
        else {
            if(session['user']==null)
            {
                redirect(url: "/user/login")
            }
            flash.message="Subject add unsuccessful"
            render view: 'create',model: [subject:subject]
        }
    }
    def edit()
    {
        if(session['user']==null)
        {
            redirect(url: "/user/login")
        }
        def subject=Subject.get(params.id)
        [subject:subject]
    }
    def create()
    {
        if(session['user']==null)
        {
            redirect(url: "/user/login")
        }
        render view: 'create'
    }
    def delete()
    {
        if(session['user']==null)
        {
            redirect(url: "/user/login")
        }
        def subject=Subject.get(params.id)
        subject.delete flush: true, failOnError: true
        flash.message="Subject deleted successfully"
        redirect action: "index"
    }
    def update()
    {
        if(session['user']==null)
        {
            redirect(url: "/user/login")
        }
        def subject=Subject.get(params.id)
        subject.properties = params
        if(subject.validate()) {
            subject.save(flush: true, failOnError: true)
            flash.message="Subject updated successfully"
            redirect action: "show", id: params.id
        }
        else {
            subject=Subject.get(params.id)
            flash.message="Subject update unsuccessful"
            render view: 'create',model: [subject:subject]
        }
    }
    def show()
    {
        def subject=Subject.get(params.id)
        [subject: subject]
    }

}
