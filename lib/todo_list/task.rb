require 'json'

class Task
	attr_reader :description

	def initialize(**attributes)
		@description = attributes[:description]
	end
	def to_json
		JSON.dump(description: @description)
	end
end