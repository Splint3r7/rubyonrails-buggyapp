class RedirectchController < ApplicationController
	def redirectchfun
		if params[:redirect_uri].starts_with?('/')
			return redirect_to params[:redirect_uri]
		elsif params[:redirect_uri] =~ /https?:\/\/pentesterlab.com\//
			return redirect_to params[:redirect_uri]
		else
			return redirect_to '/'
		end
	end
end
