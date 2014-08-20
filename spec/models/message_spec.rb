require 'spec_helper'

describe Message do
  before { @message = Message.new }

  describe 'attributes' do
    it { expect(@message).to respond_to :destination }
    it { expect(@message).to respond_to :length }
    it { expect(@message).to respond_to :source }
    it { expect(@message).to respond_to :payload }
    it { expect(@message).to respond_to :sigmode }
  end

  describe 'attribute types' do
    it { expect(@message.destination).to be_kind_of Fixnum }
    it { expect(@message.length).to be_kind_of Fixnum }
    it { expect(@message.source).to be_kind_of Fixnum }
    it { expect(@message.payload).to be_instance_of Payload }
    it { expect(@message.sigmode).to be_kind_of Fixnum }
  end

end