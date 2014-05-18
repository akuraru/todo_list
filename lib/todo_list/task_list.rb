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
end