class Example21Controller < ApplicationController

	def FileAcess2
		#File.open("#{Rails.root}/app/assets/images/#{ActivityTransactions.where(:token => params[:token], :is_expired => false).first.sendoso_touch.display_banner_image}")
		@payload = "../../../../etc/passwd"
		#payload2 = Rails.root
		#@paylaod3 = payload2+payload
		#ender = "capricorn.png"
		#var = Rails.root
		#var2 = var.join
		#@payload_1337 = Rails.root+ender+payload
		#@path = var.join(ender).join(payload)
		id = SecureRandom.uuid
		#File.link(path, "public/#{id}")
		#redirect_to "/#{id}"

		#file_x = File.open("#{Rails.root}/text.txt")
		#@file_date = file.read(file_x)
	end
end
