class Example6Controller < ApplicationController
	def cross_site_scripting6
		@string = "sdfasdf<<b>script>alert('hello')<</b>/script>"
	end
end
