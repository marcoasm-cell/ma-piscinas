class ApplicationMailer < ActionMailer::Base
  default from: 'mmarques511@gmail.com'
  layout 'mailer'

  def contact_mail(contact)
    body = ""
    body += "<p>Nome: #{contact.name}</p>"
    body += "<p>Telefone: #{contact.phone}</p>"
    body += "<p>Email: #{contact.email}</p>"
    body += "<p>Mensagem: #{contact.message}</p>"
    mail(to: "marcelo.marque1994@outlook.pt", subject: 'Novo Contacto', reply_to: contact.email)do |format|
      format.html { render html: body.html_safe }
    end
  end

end
