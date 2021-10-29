bundle install

grpc_tools_ruby_protoc -I ./PB --ruby_out=lib --grpc_out=lib ./PB/service.proto