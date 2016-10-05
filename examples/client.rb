require 'protobuf_ruby_example'

# Run server.rb before
def main
  client = ProtobufRubyExample::Client.new('0.0.0.0:50051', :this_channel_is_insecure)
  client.some_method('Hello!')
end

main
