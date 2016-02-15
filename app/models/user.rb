class User < ActiveRecord::Base

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.screenName = auth['info']['nickname']
      user.email = auth['info']['email'] #twitter doesn't disclose this - will be nil
      if auth['info']
         user.name = auth['info']['name'] || ""
      end
    end
  end

end
