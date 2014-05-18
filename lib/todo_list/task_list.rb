require 'json'

class TaskList
	def initialize
		@list = []
	end
	def add(task)
		@list << task
	end
	def count
		@list.count
	end
	def last_description
		@list.last.description
	end
	def first_description
		@list.first.description
	end
	def to_json
		JSON.dump @list.map(&:as_json)
	end
	def self.parse_json(json)
		list = self.new
		JSON.parse(json).each do |t|
			list.add(Task.new(description: t["description"]))
		end
		list
	end
	def eql?(other)
		to_json == other.to_json 
	end
end