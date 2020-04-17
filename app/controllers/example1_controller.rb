class Example1Controller < ApplicationController
	def cross_site_scripting
		#html = "<p style='font-size: 15px'>#{params[:test1]}</p>"
		#@var = html.html_safe

    #@UNIQUE_KEY_LENGTH = 6
	end
end
