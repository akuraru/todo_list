require 'spec_helper'
require 'json'

describe Task do
	describe '#as_json' do
    let(:task) { Task.new(description: '1st') }
    let(:expected) { {description: '1st'} }
    it { expect(task.as_json).to eq expected }
	end
  describe '#to_json' do
    let(:task) { Task.new(description: '1st') }
    let(:expected) do
      JSON.dump({description: '1st'})
    end
    it { expect(task.to_json).to eq expected }
  end
end