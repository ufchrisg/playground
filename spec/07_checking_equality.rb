require 'spec_helper'
require_relative '../app/playground'

RSpec.describe Playground do
  let(:hash_a) { { foo: 'bar' } }
  let(:hash_b) { { foo: 'bar' } }

  it 'is equal when not comparing object identity' do
    expect(hash_a).to eq(hash_b)
    expect(hash_a).to eql(hash_b)
  end

  it 'is not equal when comparing object identity' do
    expect(hash_a).to_not equal(hash_b)
  end
end
