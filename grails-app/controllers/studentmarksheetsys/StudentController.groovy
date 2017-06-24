package studentmarksheetsys

class StudentController {

    def index() {
        if(session['user']==null)
        {
            redirect(url: "/user/login")
        }
        def students=Student.findAll();
        [students:students]
    }
    def save(){
        if(session['user']==null)
        {
            redirect(url: "/user/login")
        }
        def student=new Student(params)

        if(student.validate()) {

            student.save(flush: true, failOnError: true)
            flash.message="Student created successfully"
            redirect action: 'index'
        }
        else {
            flash.message="Student creation unsuccessful"
            render view: 'create',model: [student:student]
        }
    }
    def edit()
    {
        if(session['user']==null)
        {
            redirect(url: "/user/login")
        }
        def student=Student.get(params.id)
        [student:student]
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
        def student=Student.get(params.id);
        student.delete flush: true, failOnError: true
        flash.message="Student deleted successfully"
        redirect action: "index"
    }
    def update()
    {
        if(session['user']==null)
        {
            redirect(url: "/user/login")
        }
        def student=Student.get(params.id)
        student.properties = params
        if(student.validate()) {
            flash.message="Student updated successfully"
            student.save(flush: true, failOnError: true)
            redirect action: "show", id: params.id
        }
        else {
            flash.message="Student couldn't be updated"
            student=Student.get(params.id)
            render view: 'edit',model: [student:student]
        }
    }

    def addresult()
    {
        if(session['user']==null)
        {
            redirect(url: "/user/login")
        }
    }
    def selectsem()
    {
        if(session['user']==null)
        {
            redirect(url: "/user/login")
        }
        def roll=params.roll
        if(Student.findByRoll(roll)!=null)
        {
            [roll:roll]
        }
        else {
            flash.message="No student with given roll found"
            render view: 'addresult'
        }
    }
    def addmarks()
    {
        if(session['user']==null)
        {
            redirect(url: "/user/login")
        }
        def sem=params.semester
        def roll=params.roll
        def semester=Semester.findBySem(Integer.parseInt(sem))
        def subjects=semester.subjects;

        [subjects:subjects,semester:sem,roll:roll]
        /*def newSem=new Semester([sem:Integer.parseInt(sem)])

        for (Subject s:subjects)
        {
            def newsub=new Subject();
            newsub.properties=s.properties
            newsub.id=null
            def idd=newsub.save(flush:true,failOnError:true)
            println("from idd")
            println(idd.getId())
            def subobj=Subject.findById(idd.getId())
            newSem.addToSubjects(subobj)
        }
        def semidd=newSem.save(flush:true,failOnError:true)
        def semobj=Semester.get(semidd.getId())
        student.addToSemesters(semobj)
        student.save(flush:true,failOnError:true)
*/
    }

    def addmarktodb()
    {
        if(session['user']==null)
        {
            redirect(url: "/user/login")
        }
        def sem=params.semester
        def roll=params.roll
        def student=Student.findByRoll(roll)
        def semester=Semester.findBySem(sem)
        def subjects=semester.subjects
        for(Subject s:subjects)
        {
            def subjectname=s.name
            def marksob=params[subjectname]
            println("marks obtained")
            println(marksob)
            def marks=new Marks(marks:marksob,roll:roll)
            def mid=marks.save(flush:true,failOnError:true)
            def getmarks=Marks.get(mid.getId())
            s.addToMarks(getmarks)
            s.save(flush:true,failOnError:true)
        }
        semester.save(flush:true,failOnError:true);
        def semobj=Semester.findBySem(sem)
        student.addToSemesters(semobj)
        student.save(flush:true,failOnError:true)
        flash.message="marks added successfully"
        redirect action: 'index'

    }

    def viewresult()
    {

    }
    def result()
    {
        def roll=params.roll
        def semester=params.semester

        def student=Student.findByRoll(roll)
        if(student==null)
        {
            flash.message="No student found with the roll provided"
            redirect action: 'viewresult'
        }
        def semesters=student.semesters
        def found=false
        def returnsem=null
        for(Semester s:semesters)
        {
            println(s.sem)
            println("semester")
            println(semester)
            if(s.sem==Integer.parseInt(semester))
            {
                println("int ture")
                found=true
                returnsem=s
                break
            }
        }
        if(found==false)
        {
            flash.message="No result found for the given user and semester"
            render view: 'viewresult'
        }
        else {
            [student: student,semester: returnsem,]
        }
    }
    def show()
    {
        if(session['user']==null)
        {
            redirect(url: "/user/login")
        }
        def student=Student.get(params.id)
        [student: student]
    }


}
