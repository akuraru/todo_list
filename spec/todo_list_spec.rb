require 'spec_helper'

describe TodoList do
  it 'has a version number' do
    expect(TodoList::VERSION).not_to be nil
  end

  let(:list) { TaskList.new }
  describe '#add' do
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
  describe '#last_description' do
	  before { list.add(Task.new(description: 'description')) }
  	it '最後に追加したTODOのみの詳細を見れる' do
  		expect(list.last_description).to eq 'description'
  	end
  end
end
