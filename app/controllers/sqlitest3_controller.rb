class Sqlitest3Controller < ApplicationController

	def sqlitest3
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
end
