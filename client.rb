this_dir = File.expand_path(File.dirname(__FILE__))
lib_dir = File.join(this_dir, 'lib')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'grpc'
require 'service_services_pb'

stub = Greeter::Greeter::Stub.new('localhost:1234', :this_channel_is_insecure)
begin
    message = stub.greet(Greeter::Person.new(first_name: "Markus", last_name: "Kuhnt")).message
    p "Greeting: #{message}"
rescue GRPC::BadStatus => e
    abort "ERROR: #{e.message}"
end