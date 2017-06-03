json.array! @attendances do |attendance|
	json.extract! attendance, :id , :gone , :fieldPrice , :fee , :player_id , :saving_id
	json.url attendance_url(attendance, format: :json)
end
