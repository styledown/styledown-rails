require 'minitest/autorun'
require './lib/styledown'

begin
  require 'minitest/reporters'
  if ENV['reporter'] == 'spec'
    Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new(:color => true)
  else
    Minitest::Reporters.use! Minitest::Reporters::ProgressReporter.new
  end
rescue LoadError => e
end

def test_path(path='')
  File.expand_path("../#{path}", __FILE__)
end
