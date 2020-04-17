class ConstantizetestController < ApplicationController
	def constantizetest
		@test = params[:cmd].constantize
	end
end
