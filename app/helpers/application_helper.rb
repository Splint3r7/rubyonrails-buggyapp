module ApplicationHelper

	def full_sanitize(s)
    	full_sanitize = Rails::Html::FullSanitizer.new
    	s.present? ? full_sanitize.sanitize(s) : ''
  	end

  	def sanitize_with_html_safe(string, tags = [], attributes = [])
  		return '' unless string

  		safe_list_sanitizer = Rails::Html::SafeListSanitizer.new
  		safe_list_sanitizer.sanitize(string, tags: tags, attributes: attributes).html_safe
  	end

  # Playing with JWT encryoption

end


