class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.user_add.subject
  #
  def user_add(user)
    @user = user

    mail to: @user.email
  end
end
