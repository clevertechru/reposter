module ApplicationHelper
  def avatar_url(user)
    if user.avatar_url.present?
      user.avatar_url
    elsif user.email.present?
      default_url = "#{root_url}assets/guest_32x32.png"
      gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
      "http://gravatar.com/avatar/#{gravatar_id}.png?s=48&d=#{CGI.escape(default_url)}"
    else
      "#{root_url}assets/guest_32x32.png"
    end
  end
end
