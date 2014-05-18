require 'spec_helper'

describe TodoList do
  it 'has a version number' do
    expect(TodoList::VERSION).not_to be nil
  end
  it "TODOを追加する" do
  	list = TaskList.new
  	list.add(Task.new(description: 'description'))
  	expect(list.count).to eq 1
 	end
end
