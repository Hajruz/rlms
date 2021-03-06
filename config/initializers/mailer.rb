Rails.application.configure do
  if ENV["SENDGRID_USERNAME"] && ENV["SENDGRID_PASSWORD"]
    config.action_mailer.delivery_method = :smtp

    config.action_mailer.smtp_settings = {
      authentication:       :plain,
      enable_starttls_auto: true,
      openssl_verify_mode:  ENV.fetch("SMTP_OPENSSL_VERIFY_MODE", nil),
      address:              ENV.fetch("SMTP_ADDRESS", "smtp.sendgrid.net"),
      port:                 ENV.fetch("SMTP_PORT", 587),
      domain:               ENV.fetch("SMTP_DOMAIN", "heroku.com"),
      user_name:            ENV.fetch("SMTP_USERNAME") { ENV.fetch("SENDGRID_USERNAME") },
      password:             ENV.fetch("SMTP_PASSWORD") { ENV.fetch("SENDGRID_PASSWORD") }
    }
  end
end
