class Payload
  attr_accessor :header, :data

  def initialize(header=0, data='')
    @header = header
    @data = data
  end
end