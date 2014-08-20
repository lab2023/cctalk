require 'spec_helper'

describe Payload do
	before { @payload = Payload.new }

	describe 'attributes' do
    it { expect(@payload).to respond_to :header }
    it { expect(@payload).to respond_to :data }
    it { expect(@payload).to respond_to :header_type }
  end

  describe 'attribute types' do
    it { expect(@payload.header).to be_kind_of Fixnum }
    it { expect(@payload.data).to be_kind_of String }
    it { expect(@payload.header_type).to be_kind_of String }
  end

  describe 'header' do
    it 'should use default value' do
      @payload = Payload.new 'asdfg', 'data'
      expect(@payload.header).to equal 0
    end

    it 'should not be negative' do
      @payload = Payload.new -125, 'data'
      expect(@payload.header).to equal 0
    end
  end

end