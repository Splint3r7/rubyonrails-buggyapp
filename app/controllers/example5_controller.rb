class Example5Controller < ApplicationController
	def cross_site_scripting5
		@title = "testing controller"

		#redirect_to params[:redirect]
	end
end
