class User < ActiveRecord::Base
	has_many :minimeals

	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
    	:recoverable, :rememberable, :trackable, :validatable

    def fancy_name
    	username.upcase + "!!!"
    end

    def twitter_profileimage
	    TwitterHelper.getbigprofileimage(username)
    end


end