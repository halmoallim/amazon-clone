class UserMailer < ApplicationMailer

    def new_user_mail
        @user = params[:user]

        mail(to:"halmoallim@mrsool.co", subject:"a new user added")
    end
end
