 class UsersController < ApplicationController
    def login
        user = User.find_by(username: params[:username])
        token = JWT.encode( { id: user.id }, 'Fuck You George')
        if(user.authenticate(params[:password]))
            render( json: { user: user, token: token } )
        else
            render( json: { failed: true, message: 'Login Failed'}) 
        end
    end
    
    def signup
        User.create({
            username: params[:username],
            password: params[:password],
        })
        render json: {message: "success"}
    end        
    
end