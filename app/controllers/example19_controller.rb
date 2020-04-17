class Example19Controller < ApplicationController
	def redirect_to_test
		@reder = params[:url]
		@redir = redirect_to "#{@reder}"
	end
end
