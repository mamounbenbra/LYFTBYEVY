class Contact < MailForm::Base
  attribute :name, validate: true
  attribute :email, validate: /\A[^@\s]+@[^@\s]+\z/i
  attribute :message, validate: true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      subject: "Demande de contact de >#{name}< sur ton site",
      to: "mamounbenbra@gmail.com",
      from: "mamounbenbra@gmail.com"
    }
  end
end
