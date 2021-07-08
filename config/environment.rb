Dir[File.join(File.dirname(__FILE__), "../lib", "*.rb")].each {|f| require f}

require 'pry'

require_relative '../lib/cat.rb'
require_relative '../lib/dog.rb'
require_relative '../lib/owner.rb'
