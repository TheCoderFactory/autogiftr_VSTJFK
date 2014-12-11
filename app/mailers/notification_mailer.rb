class NotificationMailer < ActionMailer::Base
  default from: "peter.argent@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.notify.subject
  #
  def notify(occasion_id)
    @occasion = Occasion.find(occasion_id)
    @recipient = @occasion.recipient
    @user = @recipient.user
    mail(to: @user.email, subject: "Your gift has been sent")
  end
end
