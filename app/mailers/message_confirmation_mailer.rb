class MessageConfirmationMailer < ApplicationMailer

  default from: 'no-reply@pitcairnmailer.com'

  def message_confirmation_email(message)
    @message = message
    if Rails.env.production?
      mail(to: @message.email, bcc: ["no-reply@pitcairnmailer.com", "info@pennairrepair.com"], reply_to: "info@pennairrepair.com", subject: "✈️ Thank you for contacting Penn Air Repair LLC")
    else
      # Remove Client email when not in production
      mail(to: @message.email, bcc: ["no-reply@pitcairnmailer.com"], reply_to: "info@pennairrepair.com", subject: "✈️ Thank you for contacting Penn Air Repair LLC")
    end
  end

end
