class User < ActiveRecord::Base

  before_create {generate_token(:auth_token)}

  def self.create_with_omniauth(auth)
    create! do |user|
      puts auth
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.screenName = auth['info']['nickname']
      user.email = auth['info']['email'] #twitter doesn't disclose this - will be nil
      if auth['info']
         user.name = auth['info']['name'] || ""
      end
    end
  end

  def generate_token(column)
    begin self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end

end
