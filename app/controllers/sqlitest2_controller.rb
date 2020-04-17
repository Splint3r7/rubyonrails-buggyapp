class Sqlitest2Controller < ApplicationController
	def sqlitest2
		evil_query = params[:id]
		filter = '\''.match(evil_query).to_s
		@post = Post.where("id = '#{filter}'")
	end
end
