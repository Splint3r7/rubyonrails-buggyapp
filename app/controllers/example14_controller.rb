MODELS = {
  'product' => 'product',
  'user' => 'user',
  'users' => 'users'
}


class Example14Controller < ApplicationController
	#def testing_controller
		#@dell_var = Post.where('id = ?', params[:id].constantize)
		#@test = @dell_var.delete_all
		#@test = params[:alert][:type].constantize.new(params[:alert][:value])
	#	@test = params[:a].constantize.new(params[:b])
		#alert[type]=test&alert[value]=test
		#Checking if /etc/passwd exits
		#http://127.0.0.1:3000/example14?alert[type]=File&alert[value]=/etc/passwd
	#end

## fix constantize model enumeration.
	def testing_controller
		MODELS.fetch(params[:a]
	end
end
