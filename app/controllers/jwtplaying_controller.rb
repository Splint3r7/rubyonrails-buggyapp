class JwtplayingController < ApplicationController
	#@encoded = JsonWebToken.encode()
	@encoded = SecureRandom.uuid
end
