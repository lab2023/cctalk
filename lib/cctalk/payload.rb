class Payload
  attr_accessor :header, :data, :header_type

  def initialize(header=0, data='')
    @header = header.to_i >= 0 ? header.to_i : 0
    @data = data
    @header_type = ''
  end
end