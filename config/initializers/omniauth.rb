Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['OMNIAUTH_PROVIDER_KEY'], ENV['OMNIAUTH_PROVIDER_SECRET']
  #provider :twitter, ENV['OMNIAUTH_TWITTER_KEY'], ENV['OMNIAUTH_TWITTER_SECRET']
  provider :facebook, ENV['OMNIAUTH_FACEBOOK_KEY'], ENV['OMNIAUTH_FACEBOOK_SECRET']
  provider :vkontakte, ENV['OMNIAUTH_VKONTAKTE_KEY'], ENV['OMNIAUTH_VKONTAKTE_SECRET'], scope: 'wall, stats, groups, offline, nohttps'
  #provider :odnoklassniki, ENV['OMNIAUTH_ODNOKLASSNIKI_KEY'], ENV['OMNIAUTH_ODNOKLASSNIKI_SECRET']
  provider :github, ENV['OMNIAUTH_GITHUB_KEY'], ENV['OMNIAUTH_GITHUB_SECRET']
end
