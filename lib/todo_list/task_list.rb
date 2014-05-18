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
end