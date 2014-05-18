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
  	let(:last_description) { "description #{rand}" }
	  before do 
	  	list.add(Task.new(description: 'first description'))
	  	list.add(Task.new(description: last_description))
	  end
  	it '最後に追加したTODOのみの詳細を見れる' do
  		expect(list.last_description).to eq last_description
  	end
  end
  describe '#first_description' do
  	let(:first_description) { "description #{rand}" }
  	before do
	  	list.add(Task.new(description: first_description))
	  	list.add(Task.new(description: 'second description'))
	  end
	  it '最初に追加したTODOのみの詳細を見れる' do
	  	expect(list.first_description).to eq first_description
	  end
  end
end