require 'protobuf_ruby_example'

# Runs server in infinite loop. Press Ctrl+C to interrupt
def main
  ProtobufRubyExample::Server.run('0.0.0.0:50051', :this_port_is_insecure)
end

main
