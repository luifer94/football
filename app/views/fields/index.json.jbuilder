json.array! @fields do |field|
	json.extract! field, :id , :name , :price , :size , :establishment_id
	json.url field_url(field, format: :json)
end
