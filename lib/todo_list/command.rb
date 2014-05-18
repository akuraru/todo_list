class Command
	attr_reader :list
	def save(list)
		File.open('db.json') do |f|
			f.write list.to_json
		end
	end
	def load
		File.open('db.json') do |f|
			@list = TaskList.parse_json(f.read)
		end
	end
	def self.run(*args)
		puts args
	end
end