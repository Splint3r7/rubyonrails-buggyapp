class Example23Controller < ApplicationController
	def md5hacking
		@token = Digest::MD5.hexdigest(SecureRandom.uuid)
		@token_notsecure = Digest::MD5.hexdigest("14567")
		#ee@token2 = JWT.encode("Hassan")
	end
end
