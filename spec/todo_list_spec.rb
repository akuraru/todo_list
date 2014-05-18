require 'spec_helper'

describe TodoList do
  it 'has a version number' do
    expect(TodoList::VERSION).not_to be nil
  end

  describe '#add' do
  	let(:list) { TaskList.new }

    context '1件追加される場合' do
	    before { list.add(Task.new(description: 'description')) }
  	  it "リストのカウントが1になる" do
	  	  expect(list.count).to eq 1
	 	  end
	    context 'さらに追加される場合' do
		    before { list.add(Task.new(description: 'description')) }
			 	it "リストのカウントが２になる" do
			  	expect(list.count).to eq 2
			  end
		  end
    end
  end
end
