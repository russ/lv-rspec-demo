require File.expand_path(File.join(File.dirname(__FILE__), '..', 'init'))

require 'spec'
require 'spec/autorun'

Spec::Runner.configure do |config|
  config.mock_with :mocha
end
