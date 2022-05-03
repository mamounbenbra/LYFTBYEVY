class Contact < MailForm::Base
  attribute :name, validate: true
  attribute :email, validate: /\A[^@\s]+@[^@\s]+\z/i
  attribute :message, validate: true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      subject: "Message sur le site LYFT BY EVY",
      to: "lyftbyevy1@gmail.com",
      from: %("#{name}" <#{email}>)
    }
  end
end

