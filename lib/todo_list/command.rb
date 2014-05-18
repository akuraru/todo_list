class Command
	def save(list)
		File.open('db.json') do |f|
			f.write list.to_json
		end
	end
end