require 'spec_helper'
require_relative '../app/playground'

RSpec.describe Playground do
  let(:playground) { Playground.new }
  let(:status) { playground.status }

  describe 'allow to receive' do
    before do
      allow(playground).to receive(:status).and_return('bar')
    end

    specify { expect(status).to eql('bar') }

    context 'when calling original' do
      before do
        allow(playground).to receive(:status).and_call_original
      end

      specify { expect(status).to eql('closed') }
    end
  end

  describe 'expect to receive' do
    subject(:open_playground) { playground.open! }

    it 'calls Time.now' do
      expect(Time).to receive(:now).and_call_original
      open_playground
    end
  end
end
