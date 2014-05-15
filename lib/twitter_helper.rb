module TwitterHelper
	
	def self.twitter_client 
		
		Twitter::REST::Client.new do |config|
	  	config.consumer_key    = "BnigFA98IcTCsMex99YUA"
	  	config.consumer_secret = "d911m2iqTbCc0ZjsPWElwHudS1OGC3ZAxtmdY0mVtwE"
		end
	end


	def self.getprofileimage(username)
		user = twitter_client.user(username)
		user.profile_image_url.to_s
	rescue Twitter::Error::NotFound
	  "default.jpg"
	end

	def self.getbigprofileimage(username)
		getprofileimage(username).gsub("normal", "400x400")
	end
end

# profile_image_url: replace _hormal via gsub http://www.techotopia.com/index.php/Ruby_String_Replacement%2C_Substitution_and_Insertion