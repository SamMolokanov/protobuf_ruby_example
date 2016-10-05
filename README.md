# ProtobufRubyExample

This is an example of PRC client/server on Ruby with [Google Protocol Buffers](https://developers.google.com/protocol-buffers/) and [gRPC](http://www.grpc.io/)

This gem offers some naming conventions in order to keep files structures clean:
  * All **.proto* files live in folder [proto](proto)
  * Rake task `protobuf_ruby_example:generate` generates ruby files for Google Protocol objects and RPC services
  * All generated tasks are included in [proto.rb](lib/protobuf_ruby_example/proto.rb)
  * Custom logic handling request and response lives in files [client](lib/protobuf_ruby_example/client.rb) and [server](lib/protobuf_ruby_example/server.rb)

This structure allows to hide Google Protocol Buffers details behind client/server abstractions layer and separate custom code from protocol-specific code.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'protobuf_ruby_example', git: 'git://github.com/SamMolokanov/protobuf_ruby_example.git'
```

And then execute:

    $ bundle

Or install it yourself from source:

    $ git clone git@github.com:SamMolokanov/protobuf_ruby_example.git
    $ cd protobuf_ruby_example
    $ rake install

## Usage

This is just working example, not really usage supposed.
Try some examples in different terminales:

    $ ruby examples/server.rb
    $ ruby examples/client.rb

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/SamMolokanov/protobuf_ruby_example.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

