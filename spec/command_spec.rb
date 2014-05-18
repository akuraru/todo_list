require 'spec_helper'

describe Command do
	let(:command) { Command.new }
	let(:file) { double(:file) }
	describe '#save' do
		let(:list) { TaskList.new }
		before do
			list.add(Task.new(description: '1st'))
			file.stub(:write)
			File.stub(:open).and_yield(file)
			command.save(list)
		end

	  it { expect(file).to have_received(:write).with(list.to_json) }
	end
	describe '#load' do
		let(:list) { TaskList.new }
		let(:json) { JSON.dump [{description: '1st'}] }
		before do
			list.add(Task.new(description: '1st'))
			file.stub(:read).and_return(json)
			File.stub(:open).and_yield(file)
			command.load
		end
		it { expect(file).to have_received(:read) }
		it { expect(command.list).to eql list }
	end
end