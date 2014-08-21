require 'spec_helper'

describe Message do
  before { @message = Message.new }

  describe 'attributes and methods' do
    subject { @message }

    attributes = [:destination, :length, :source, :payload, :sigmode,
                  :raw, :set_payload, :get_payload, :get_payload_type]

    attributes.each do |attr|
      it { is_expected.to respond_to attr }
    end
  end

  describe 'attribute types' do
    it { expect(@message.destination).to be_kind_of Fixnum }
    it { expect(@message.length).to be_kind_of Fixnum }
    it { expect(@message.source).to be_kind_of Fixnum }
    it { expect(@message.payload).to be_instance_of Payload }
    it { expect(@message.sigmode).to be_kind_of Fixnum }
  end

  describe 'methods' do
    pending 'should wait' do

    end
  end

end