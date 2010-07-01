require 'rubygems'
require 'bundler'

Bundler.setup

require 'active_model'

root_path = File.expand_path(File.join(File.dirname(__FILE__)))
$LOAD_PATH.unshift(File.join(root_path, 'lib', 'models'))

require 'credit_card'
