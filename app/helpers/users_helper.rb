module UsersHelper
  def gravatar_url(user, options = { size: 80 } )
  gravatar_id = Digest::ND5::hexdigest(user.email.downcase)
  size = options[:size]
  "https://secure.garavatar.com/avatar/#{gravatar_id}?s=#{size}"
  end
end
