class UserMailer < ActionMailer::Base
  default from: "197469816@qq.com"
   def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome')
  end
end