class Notifier < ActionMailer::Base
  default :from => "sadykov1988@gmail.com"

  def email_friend(article, sender_name, receiver_email)
    @article = article
    @sender_name = sender_name

    mail :to => receiver_email, :subject => "Interesting Article"
  end
end
