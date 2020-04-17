class Example20Controller < ApplicationController
	def ReverseTab
		@reverse = params[:url]
	end
end
