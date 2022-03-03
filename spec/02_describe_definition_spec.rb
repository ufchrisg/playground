require 'spec_helper'
require_relative '../app/playground'

RSpec.describe Playground, '#open!' do
  let(:playground) { Playground.new }

  it 'opens the playground for visitors' do
    playground.open!
    expect(playground.open?).to eql(true)
  end
end
