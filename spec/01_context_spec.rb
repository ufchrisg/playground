require 'spec_helper'
require_relative '../app/playground'

RSpec.describe Playground do
  let(:playground) { Playground.new }

  describe 'when under maintenance' do
    before do
      playground.requires_maintenance = true
    end

    it 'does not open the playground' do
      playground.open!
      expect(playground.open?).to eql(false)
    end
  end
end
