class ApplicationController < ActionController::Base


    def confirmation
        if session[:user_id] == nil
            redirect_to("/login")
        end
    end

    def inspector
        if session[:user_admin] == false 
            flash[:notice] = "権限がありません"
            redirect_to("/user/#{session[:user_id]}")
        end
    end
end
