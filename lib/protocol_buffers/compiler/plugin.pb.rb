#!/usr/bin/env ruby
# Generated by the protocol buffer compiler. DO NOT EDIT!

require 'protocol_buffers'

begin; require 'descriptor.pb'; rescue LoadError; end

# forward declarations
class CodeGeneratorRequest < ::ProtocolBuffers::Message; end
class CodeGeneratorResponse < ::ProtocolBuffers::Message; end

class CodeGeneratorRequest < ::ProtocolBuffers::Message
  repeated :string, :file_to_generate, 1
  optional :string, :parameter, 2
  repeated ::Google::Protobuf::FileDescriptorProto, :proto_file, 15
end

class CodeGeneratorResponse < ::ProtocolBuffers::Message
  # forward declarations
  class File < ::ProtocolBuffers::Message; end

  # nested messages
  class File < ::ProtocolBuffers::Message
    optional :string, :name, 1
    optional :string, :insertion_point, 2
    optional :string, :content, 15
  end

  optional :string, :error, 1
  repeated ::CodeGeneratorResponse::File, :file, 15
end

