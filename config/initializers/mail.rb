Rails.application.config.action_mailer do |mailer|
  mailer.perform_deliveries = true
  mailer.delivery_method = :smtp
  mailer.default_options  = { host: ENV.fetch('MAIL_DOMAIN') { 'localhost' } }
  mailer.default_url_options = { host: ENV.fetch('MAIL_DOMAIN') { 'localhost' } }
  mailer.default = { charset: 'utf-8' }
  mailer.smtp_settings = {
    address: ENV.fetch('MAIL_ADDRESS') { 'localhost' },
    domain: ENV.fetch('MAIL_DOMAIN') { 'lvh.me' },
    port: ENV.fetch('MAIL_PORT') { '1025' },
    enable_starttls_auto: Rails.env.production?,
    authentication: :login,
    user_name: ENV.fetch('MAIL_USERNAME') { nil },
    password: ENV.fetch('MAIL_PASSWORD') { nil },
  }
end
