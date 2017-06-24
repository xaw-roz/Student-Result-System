package studentmarksheetsys

class UserController {
    def index() {
        if(session['user']==null)
        {
            redirect(url: "/user/login")
        }
        def users=User.getAll()
        [users:users]
    }

    def save(){
        if(session['user']==null)
        {
            redirect(url: "/user/login")
        }
        def user=new User(params)
        if(user.validate()) {
            flash.message="User added successfully"
            user.save(flush: true, failOnError: true)
            redirect action: 'index'
        }
        else {
            flash.message="User add not successful"
            render view: 'create',model: [user:user]
        }
    }
    def edit()
    {
        if(session['user']==null)
        {
            redirect(url: "/user/login")
        }
        def user=User.get(params.id)
        [user:user]
    }
    def show()
    {
        if(session['user']==null)
        {
            redirect(url: "/user/login")
        }

        def user=User.get(params.id);
        [user:user]
    }
    def create()
    {
        if(session['user']==null)
        {
            redirect(url: "/user/login")
        }
        render view: 'create'
    }
    def delete() throws Exception
    {
        if(session['user']==null)
        {
            redirect(url: "/user/login")
        }
        def user=User.get(params.id)
        user.delete flush: true, failOnError: true
        flash.message="User deleted successfully"
        redirect action: "index"
    }
    def update()
    {
        if(session['user']==null)
        {
            redirect(url: "/user/login")
        }
        def user=User.get(params.id)
        user.properties = params
        if(user.validate()) {
            user.save(flush: true, failOnError: true)
            flash.message="User updated successfully"
            redirect action: "show", id: params.id
        }
        else {
            user=User.get(params.id)
            flash.message="User update unsuccessful"
            render view: 'create',model: [user:user]
        }
    }
    def login()
    {
        if(session['user']!=null)
        {
            redirect(url: "/user/admindashboard")
        }

    }
    def validateLogin()
    {
        def username=params.username
        def password=params.password

        def user=User.findByUsernameAndPassword(username,password)
        if(user!=null)
        {
            session['user']=user
        }
        render view: 'admindashboard'

    }
    def logout() {
        if(session['user']==null)
        {
            redirect(url: "/user/login")
        }
        log.info "User agent: " + request.getHeader("User-Agent")
        session.invalidate()
        redirect(action: "login")
    }
    def admindashboard()
    {

    }
}
