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

	def mail
		if params[:recipent].to_s =~ /^\w+@outlook.com\.com$/
			#Email is model
			mail = Email.create(rcpt: params[:recipient].to_s)
			mail.send!
		end
	end


	def authorize
		if request.get?
			render 'authorize'
		else
			authorize!
		end
	end


end
