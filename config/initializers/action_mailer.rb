# SMTP configuration for action mailer
# Rails.application.config.action_mailer.smtp_settings = {
#   address: 'smtp.gmail.com',
#   port: 587,
#   domain: 'gmail.com',
#   user_name: 'marco.a.s.m@hotmail.com',
#   password: 'tovxlnorofbkvsyu',
#   authentication: :login,
#   enable_starttls_auto: true
# }
Rails.application.config.action_mailer.smtp_settings = {
  address: 'smtp.gmail.com',
  port: 587,
  domain: 'gmail.com',
  user_name: 'mmarques511@gmail.com',
  password: 'hylrbgviicnizlxj',
  authentication: 'plain',
  enable_starttls_auto: true
}
