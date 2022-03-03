require 'spec_helper'
require_relative '../app/playground'

RSpec.describe Playground do
  subject(:playground) { Playground.new }

  it { is_expected.to eql(playground.closed?) }

  describe '#open!' do
    subject(:open_playground) { playground.open! }

    expect(open_playground).to be_closed

    specify { expect(open_playground).to be_closed }
    it { is_expected.to be_truthy }
  end
end
