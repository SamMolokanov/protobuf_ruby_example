require 'spec_helper'

describe ProtobufRubyExample::Client do
  let(:fake_service) { double 'ProtobufRubyExample::Proto::Api::Stub', some_method: fake_response }
  let(:fake_response) { double 'ProtobufRubyExample::Proto::ResponsePb', status: 'ok' }
  before { allow(ProtobufRubyExample::Proto::Api::Stub).to receive(:new).and_return(fake_service) }

  let(:connection_string) { '0.0.0.0:50051' }
  subject { ProtobufRubyExample::Client.new connection_string, :this_channel_is_insecure }

  it 'respond to :some_method' do
    is_expected.to respond_to :some_method
  end

  describe '#some_method' do
    let(:message) { 'hello!' }

    it 'returns status of response from RPC service' do
      expect(subject.some_method(message)).to eq fake_response.status
    end

    it 'calls #some_method on RPC service' do
      subject.some_method(message)
      expect(fake_service).to have_received :some_method
    end
  end
end
