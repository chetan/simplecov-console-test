$LOAD_PATH.push(File.expand_path('../lib', __dir__))

require 'bundler/setup'
require 'simplecov'
require 'simplecov-console'
SimpleCov.start do
  if ENV['STYLE']
    # e.g., 'block'
    SimpleCov::Formatter::Console.output_style = ENV['STYLE']
  end
  if ENV['BRANCH']
    # enable branch coverage
    enable_coverage :branch
  end
  SimpleCov::Formatter::Console.table_options = { style: { width: ENV['WIDTH'].to_i } } if ENV['WIDTH']
  SimpleCov.formatter =
    SimpleCov::Formatter::MultiFormatter.new([
                                               SimpleCov::Formatter::HTMLFormatter,
                                               SimpleCov::Formatter::Console
                                             ])
end
require 'simplecov-console-test'

# Stub out the default minitest reporter(s) for cleaner output in our suite
if ENV['STUB']
  require 'minitest'
  class NoopReporter < Minitest::Reporter
  end
  Minitest.extensions << 'noop_reporter'

  module Minitest # rubocop:disable Style/Documentation
    def self.plugin_noop_reporter_init(options)
      Minitest.reporter.reporters.clear
      Minitest.reporter << NoopReporter.new(options[:io], options)
    end
  end
end

require 'minitest/autorun'
