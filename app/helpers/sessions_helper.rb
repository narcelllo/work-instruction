module SessionsHelper
    def sing_in
        session[:user_id] = user.id        
    end
    
    def sing_out
        session.delete(user.id)        
    end
    
    def current_user
        @current_user ||= User.find_by(id: session[:user.id])
    end

    def user_singned_in?
        !current_user().nil?        
    end
    
    
end
