json.array! @savings do |saving|
	json.extract! saving, :id , :date , :begin , :end , :player_id
	json.url saving_url(saving, format: :json)
end
