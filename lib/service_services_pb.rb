# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: service.proto for package 'greeter'

require 'grpc'
require 'service_pb'

module Greeter
  module Greeter
    class Service

      include ::GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'greeter.Greeter'

      rpc :Greet, ::Greeter::Person, ::Greeter::Greeting
    end

    Stub = Service.rpc_stub_class
  end
end
