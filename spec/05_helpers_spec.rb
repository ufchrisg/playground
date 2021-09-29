require "spec_helper"
require "timecop"
require_relative "support/freeze_time"
require_relative "../app/playground"

RSpec.describe Playground, "#open!" do
  subject(:open_playground) { playground.open! }

  let(:playground) { Playground.new }

  it "freezes time so we can assert opened_at" do
    Timecop.freeze do
      expect { open_playground }
        .to change(playground, :opened_at)
        .to(Time.now)
    end
  end

  it "uses a helper to freeze time", :freeze_time do
    expect { open_playground }
      .to change(playground, :opened_at)
      .to(Time.now)
  end
end
