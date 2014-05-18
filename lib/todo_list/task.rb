require 'json'

class Task
	attr_reader :description

	def initialize(**attributes)
		@description = attributes[:description]
	end
	def as_json
		{description: @description}
	end
	def to_json
		JSON.dump(as_json)
	end
end