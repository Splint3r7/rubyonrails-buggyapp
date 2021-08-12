class ChallangesController < ApplicationController
	'''
	1- Directory traversal
	2- Local file read
	3- open does allow code executions beacuse its kernal operation, instead you should use File.open

	'''
	def motd
		if params[:motd].blank?
			flash[:alert] = "Parameter motd is missing"
		else
			@motd = open(params[:motd]+".txt") { |fd|

			fd.read

		}
		#render :motd
	end
	end
end
