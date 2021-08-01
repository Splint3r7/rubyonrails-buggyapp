class XsshyperlinkController < ApplicationController
	def xss_method
	    #@user = Post.find(params[:id].to_i)
	    @user = params[:id]
	end
end
