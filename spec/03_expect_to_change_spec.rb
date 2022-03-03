require 'spec_helper'
require_relative '../app/playground'

RSpec.describe Playground, '#open!' do
  let(:playground) { Playground.new }

  it 'opens the playground for visitors' do
    playground.open!
    expect(playground.open?).to eql(true)
  end

  it 'also opens but expects it to have been closed' do
    expect { playground.open! }
      .to change(playground, :open?) # .to change { playground.open? }
      .from(false).to(true)
  end
end
