class Example14Controller < ApplicationController
	def testing_controller
		#@dell_var = Post.where('id = ?', params[:id].constantize)
		#@test = @dell_var.delete_all
		@test = params[:alert][:type].constantize.new(params[:alert][:value])
		#alert[type]=test&alert[value]=test
		#Checking if /etc/passwd exits
		#http://127.0.0.1:3000/example14?alert[type]=File&alert[value]=/etc/passwd
	end
end
