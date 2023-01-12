require 'spec_helper'
require_relative '../app/playground'

RSpec.describe Playground do
  subject(:playground) { Playground.new }

  # Good
  it 'is initially closed' do
    expect(playground).to be_closed
  end

  # Bad
  it { is_expected.to be_closed }

  describe '#open!' do
    subject(:open_playground) { playground.open! }

    it 'opens the playground' do
      expect { open_playground }.to change(playground, :open?).to(true)
    end

    specify { expect { open_playground }.to change { playground.closed? }.to(false) }
  end
end
