Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 'a1f269e5ea84299dcc2f013d47b4f85e', 'e573e9ec845ec427648b65fb0443c066'
end
