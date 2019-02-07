Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, '527130e6f778f7ef7847', '063c4001633d2942bca273dfdd25ed9ae0af8bd7'
end
