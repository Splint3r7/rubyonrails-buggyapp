class Example16Controller < ApplicationController
	def swalxsstesting
		#@post_id = Post.where(id: 10)
		@message = params[:text]
	end
end
