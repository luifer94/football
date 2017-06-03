json.array! @savingfields do |savingfield|
	json.extract! savingfield, :id , :saving_id , :field_id
	json.url savingfield_url(savingfield, format: :json)
end
