class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@jungle.com"
  layout 'mailer'

  def welcome_email
    @user = current_user
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
