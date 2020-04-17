class EgiftTokenTestController < ApplicationController

	 include GenerateUniqueToken

	def egift_token_test_method
		@token = params[:token]
	end
end
