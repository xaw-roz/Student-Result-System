package studentmarksheetsys

class BootStrap {
    def messageSource //our old friend
    def grailsApplication//even older friend :)
    def init = { servletContext ->
        def sem1=new Semester([sem:1]);
        sem1.save()
        def sem2=new Semester([sem:2]);
        sem2.save()
        def sem3=new Semester([sem:3]);
        sem3.save()
        def sem4=new Semester([sem:4]);
        sem4.save()
        def sem5=new Semester([sem:5] );
        sem5.save()
        def sem6=new Semester([sem:6]);
        sem6.save()
        def sem7=new Semester([sem:7]);
        sem7.save()
        def sem8=new Semester([sem:8]);
        sem8.save()

        def user=new User([username:"saroj",password:"sarojsaroj",role:"admin",name:"saroj shrestha"])
        user.save()
    }
    def destroy = {
    }
}
