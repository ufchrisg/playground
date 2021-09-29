RSpec.configure do |config|
  config.around(:example, freeze_time: true) do |example|
    Timecop.freeze { example.run }
  end
end
