require 'spec_helper'

describe Payload do
	before { @payload = Payload.new }

	describe 'attributes' do
    it { expect(@payload).to respond_to :header }
    it { expect(@payload).to respond_to :data }
  end

  describe 'attribute types' do
    it { expect(@payload.header).to be_kind_of Fixnum }
    it { expect(@payload.data).to be_kind_of String }
  end

end