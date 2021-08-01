class Example1Controller < ApplicationController
	#def cross_site_scripting
		#html = "<p style='font-size: 15px'>#{params[:test1]}</p>"
		#@var = html.html_safe

    	#@UNIQUE_KEY_LENGTH = 6
    	#@pm = params[:xss]
    	#@sess = session[@pm.to_i]
	#end


	def cross_site_scripting
	    #@user = Post.find(params[:id].to_i)
	    @user = params[:id]
	end
end
