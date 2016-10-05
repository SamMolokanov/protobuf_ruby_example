module ProtobufRubyExample
  # Class: RPC server ProtobufRubyExample.Proto.Api implementation
  #
  class Server < ProtobufRubyExample::Proto::Api::Service
    # Public: Run RPC server ProtobufRubyExample.Proto.Api
    # connection_string - string with host and port
    #
    # Example:
    #  require 'protobuf_ruby_example'
    #  ProtobufRubyExample::Server.run('0.0.0.0:50051', :this_port_is_insecure)
    #
    def self.run(*args)
      GRPC::RpcServer.new.tap do |server|
        server.add_http2_port(*args)
        server.handle(self.new)
        server.run_till_terminated
      end
    end

    # Public: implements SomeMethod RPC method
    #   request - ProtobufRubyExample.Proto.RequestPb message
    #
    # Returns: ProtobufRubyExample.Proto.ResponsePb message
    #
    def some_method(request, _unused_call)
      # Write you own logic here how to handle the request
      ProtobufRubyExample::Proto::ResponsePb.new(status: 'ok')
    end
  end
end
