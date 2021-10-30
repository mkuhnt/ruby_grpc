# grpc_ruby

## Get the ruby plugins

`bundle install`

## Re-Generate the ruby code

```shell
grpc_tools_ruby_protoc -I ./PB --ruby_out=lib --grpc_out=lib ./PB/service.proto
```

# Run the client

`ruby client.rb`