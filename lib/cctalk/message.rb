class Message
  attr_accessor :destination, :length, :source, :payload, :sigmode

  def initialize(data='', source=1, destination=2, header=0, payload='')
    @source = source
    @destination = destination
    @payload = Payload.new(header, payload)
    @length = payload.length
    @sigmode = 0
  end
end