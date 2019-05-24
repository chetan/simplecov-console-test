require 'helper'

class TestSimplecovConsoleTest < MiniTest::Test
  def test_defined
    assert defined?(SimpleCovConsoleTest)
  end

  def test_add
    assert_equal SimpleCovConsoleTest.new.add(1, 2), 3
  end

  def test_full_cov
    assert_equal SimpleCovConsoleTestFullCoverage.new.foobar, 3
  end
end
