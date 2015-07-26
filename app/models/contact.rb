class Contact < MailForm::Base
  attribute :subject,      :validate => true
  attribute :name
  attribute :phone
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message

  def headers
    {
        :subject => "Moriven Studio Contact Form",
        :to => "bechirsegni@gmail.com",
        :from => %(<#{email}>)

    }
  end
end