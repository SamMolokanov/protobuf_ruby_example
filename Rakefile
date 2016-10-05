require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)
namespace :protobuf_ruby_example do
  desc "Generate ruby proto classes"
  task :generate do
    puts "Generate ruby code for protobuf protocol"
    `grpc_tools_ruby_protoc -I=proto --ruby_out=lib/protobuf_ruby_example/proto/ --grpc_out=lib/protobuf_ruby_example/proto/ proto/api.proto`
    `grpc_tools_ruby_protoc -I=proto --ruby_out=lib/protobuf_ruby_example/proto/ proto/messages.proto`
  end
end

task :build => "protobuf_ruby_example:generate"
task :spec => "protobuf_ruby_example:generate"
task :default => :spec
