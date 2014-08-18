class AdminMailer < ActionMailer::Base
  default :to => Admin.all.map(&:email),
          :from => "notification@example.com"
    
    def new_registration(user)
      @user = user
      mail(:subject => "New User Signup: #{@user.email}")
    end
end
  