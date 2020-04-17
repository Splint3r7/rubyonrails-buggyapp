class PostsController < ApplicationController
	def index
		@post = Post.all
	end

	def new
		@post = Post.new()
	end

	def create
		#render plain: params[:post].inspect
		@post = Post.new(post_params)
		if (@post.save)
			redirect_to @post
		else
			render 'new'
		end
	end

	def show
		@post = Post.find(params[:id])
		#@Value = 
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		if (@post.update(post_params))
			redirect_to @post
		else
			render 'edit'
		end
	end

	# Rails SQL injection ( using update_all method ) 
	def change
		#Vulneralbe
		parameter = params[:id]
		@post = Post.where(id: 10).update_all("title = '#{parameter}'")

		#update_all("title = 'hassan', body = 'Hacked'")
		#Patched
		#@post = Post.where(id: 10).update_all(title: parameter)

		# /*

		#Exploitation:
		# The attacer will be able to update the records that do not belong to him
		# Exploitation Steps:
		# 1- chaning the title request will be:
		# @ http://127.0.0.1:3000/change?id=hassan
		# 2- Changing other data/parameters in database
		# @ http://127.0.0.1:3000/change?id=hassan%27,%20body%20=%20%27Hacked
		# Exploited Query would be like:

		# update_all("title = 'Hassan', body = 'Hacked123'")

		# */
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		redirect_to posts_path
	end

	private def post_params
		params.require(:post).permit(:title, :body)
	end
end