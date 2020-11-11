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

  def test_branches
    sc = SimpleCovConsoleTest.new
    assert_equal sc.branchy(1), 100
    assert_equal sc.branchy(2), 200
    assert_equal sc.branchy(100), 0
  end
end
