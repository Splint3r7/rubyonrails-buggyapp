class Example22Controller < ApplicationController
	#Sanitize using helper methods.
	#Created a helper function as sanitize_with_html_safe in application_helper.rb

	def cross_site_scripting22
		html = "<h1>#{params[:test1]}</h1>"
		@var = html.html_safe

		html2 = "<script> 

			mg = 'test'

		</script>"
		@var2 = html2.html_safe

		# Patching above using the method

		#helpers.sanitize_with_html_safe(@var, %w[p], %w[style])
	end
end
