
$LOAD_PATH.push(File.expand_path("../../lib", __FILE__))

require "bundler/setup"
require "simplecov"
require "simplecov-console"
SimpleCov.start do
  if ENV['STYLE'] then
    # e.g., 'block'
    SimpleCov::Formatter::Console.output_style = ENV['STYLE']
  end
  if ENV['BRANCH'] then
    # enable branch coverage
    enable_coverage :branch
  end
  if ENV['WIDTH']
    SimpleCov::Formatter::Console.table_options = {:style => { :width => ENV['WIDTH'].to_i }}
  end
  SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
    SimpleCov::Formatter::HTMLFormatter,
    SimpleCov::Formatter::Console
  ])
end
require "simplecov-console-test"

require "minitest/autorun"
