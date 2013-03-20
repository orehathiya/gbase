# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Gbase::Application.initialize!

# smtp setting
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :user_name            => 'ma12088@shibaura-it.ac.jp',
  :password             => ENV['SMTP_PASSWORD'],
  :authentication       => 'plain',
  :enable_starttls_auto => true  }
