class Identity < OmniAuth::Identity::Models::ActiveRecord
	attr_accessor :dk_username
end