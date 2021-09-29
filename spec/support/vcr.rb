RSpec.configure do |config|
  config.around(:example, cassette: true) do |example|
    VCR.use_cassette(example.metadata[:cassette]) { example.run }
  end
end
