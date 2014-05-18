require 'spec_helper'

describe Command do
	describe '#save' do
		let(:command) { Command.new }
		let(:list) { TaskList.new }
		let(:file) { double(:file) }
		before do
			list.add(Task.new(description: '1st'))
			file.stub(:write)
			File.stub(:open).and_yield(file)
			command.save(list)
		end

	  it { expect(file).to have_received(:write).with(list.to_json) }
	end
end