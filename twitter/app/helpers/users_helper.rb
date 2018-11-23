module UsersHelper
    GRAVATAR_ROOT_URL = "https://secure.gravatar.com/avatar"

    def gravatar_for(user)
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
        gravatar_url = "#{GRAVATAR_ROOT_URL}/#{gravatar_id}"
        image_tag(gravatar_url, alt: user.name, class: "gravatar")
    end
end