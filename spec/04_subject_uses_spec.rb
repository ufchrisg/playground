require "spec_helper"
require_relative "../app/playground"

RSpec.describe Playground do
  subject(:playground) { Playground.new }

  it { is_expected.to be_closed }

  describe "#open!" do
    subject(:open_playground) { playground.open! }

    it { is_expected.to be_truthy }
  end
end
