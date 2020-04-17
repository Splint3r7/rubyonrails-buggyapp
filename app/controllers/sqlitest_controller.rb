
class SqlitestController < ApplicationController
	def sqlitest
		#@post = Post.where("id = '#{params[:id]}'")
		@post = Post.where("id = ?", params[:id])
		
	end
end





#@post = Post.where("id = '#{params[:id]}'")
#https://www.rubyguides.com/2015/06/ruby-regex/


class CommandInjection < ApplicationController
	def CommandInjection
		system("#{params[:name]}")
		#Other Example
		exec("#{params[:name]}")
	end
end



		system("ls", "-a", "-l", path)




	end


