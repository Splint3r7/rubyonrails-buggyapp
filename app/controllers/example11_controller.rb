class Example11Controller < ApplicationController
	def commandinjection
		payload = params[:payload]
		@user = where("email = #{payload}").first
		render @user

	end
end
