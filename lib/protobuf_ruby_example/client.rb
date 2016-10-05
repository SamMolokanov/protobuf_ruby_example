module ProtobufRubyExample
  # Class: RPC client for ProtobufRubyExample.Proto.Api service.
  #   Keep code not related to Protobuf implementation, business logic, logging etc.
  #
  class Client
    def initialize(*args)
      @rpc_stub = ProtobufRubyExample::Proto::Api::Stub.new(*args)
    end

    # Public:
    #   Call RPC method SomeMethod and place for custom code
    #     id, message - payload for RequestPb structure
    #
    # Example:
    #   require 'protobuf_ruby_example'
    #
    #   client = ProtobufRubyExample::Client.new('0.0.0.0:50051', :this_channel_is_insecure)
    #   client.some_method('hello')
    #     # => 'ok'
    #
    # Returns:
    #   ResponsePb message
    def some_method(message)
      # Write your own code here to build request and parse response
      request = ProtobufRubyExample::Proto::RequestPb.new(id: rand(100), message: message)

      response = @rpc_stub.some_method(request)

      return response.status
    end
  end
end
