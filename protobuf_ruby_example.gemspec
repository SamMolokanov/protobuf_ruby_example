# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

lib = File.expand_path('../lib/protobuf_ruby_example/proto', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'protobuf_ruby_example/version'

Gem::Specification.new do |spec|
  spec.name          = "protobuf_ruby_example"
  spec.version       = ProtobufRubyExample::VERSION
  spec.authors       = ["Semjon Molokanov"]
  spec.email         = ["molokanovcv@yandex.com"]

  spec.summary       = %q{Ruby Google Protobuf protocol wrapper for sample RPC API.}
  spec.description   = %q{Ruby Google Protobuf protocol wrapper for sample RPC API.}
  spec.homepage      = 'https://github.com/SamMolokanov/protobuf_ruby_example'
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = Dir["lib/**/*.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "lib/protobuf_ruby_example/proto"]

  spec.add_runtime_dependency "google-protobuf", "~> 3.1"
  spec.add_runtime_dependency "grpc", "~> 1.0"
  spec.add_runtime_dependency "grpc-tools", "~> 1.0"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
