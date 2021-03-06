require 'bundler/setup'
require 'factory_girl'
require 'pathname'
require 'rspec'
require 'tandaco'

SPEC_DIR = Pathname.new(File.dirname(__FILE__))
Dir[SPEC_DIR.join('support', '*.rb')].each { |f| require f }
FIXTURES_DIR = SPEC_DIR.join('fixtures')

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
