class UserMailer < ApplicationMailer
  default from: 'university-Abbes-laghrour@example.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.registration_confirmation.subject
  #
  def registration_confirmation(user)
    @user = user

    mail to: @user.Email , subject: "Registration confirmation"
  end
end
