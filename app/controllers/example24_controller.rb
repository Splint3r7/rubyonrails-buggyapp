class Example24Controller < ApplicationController
	def vulnrender
		render params[:template]
	end
end
