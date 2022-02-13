# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

    def new_user_mail
        user = User.new(name: "test", email: "test@gmail.com")
        UserMailer.with(user: user).new_user_mail
        
    end

end
