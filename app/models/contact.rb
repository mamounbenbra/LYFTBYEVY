class Contact < MailForm::Base
  attribute :name, validate: true
  attribute :email, validate: true
  attribute :message, validate: true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      subject: "Demande de contact sur le site",
      to: "mamounbenbra@gmail.com",
      from: %("#{name}" <#{email}>)
    }
  end
end
