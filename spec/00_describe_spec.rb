require 'spec_helper'
require_relative '../app/playground'

RSpec.describe Playground do
  let(:playground) { Playground.new }

  describe '#open!' do
    it 'opens the playground for visitors' do
      playground.open!
      expect(playground.open?).to eql(true)
    end

    context 'is under maintenance' do
      before do
        playground.requires_maintenance = true
      end

      it 'does not open the playground' do
        playground.open!
        expect(playground.open?).to eql(false)
      end
    end
  end
end
