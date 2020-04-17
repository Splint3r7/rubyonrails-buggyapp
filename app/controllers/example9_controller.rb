


class Example9Controller < ApplicationController
	def fileread
		payload = params[:payload]
		path = Rails.root.join(payload)
		id = SecureRandom.uuid
		File.link(path, "public/#{id}")
		redirect_to "/#{id}"
	end
end




def create_csv_send_log_and_update_path
    csv_send_log = @touch.csv_send_logs.create(user_id: current_user.id)
    file_path = params[:send][:file_path]
    if CsvReader.remote_url?(file_path)
      csv_send_log.remote_bulk_send_csv_file_url = file_path
    else
      csv_send_log.bulk_send_csv_file = File.open(file_path)
    end
    csv_send_log.csv_headers = CsvReader.read(file_path, headers: true).headers.map{|header| header.to_s.strip.split.join(" ")}
    csv_send_log.save!
    csv_send_log
  end
end







