
require "simplecov-console-test/full-coverage"

class SimpleCovConsoleTest
  def add(a, b)
    return a+b
  end

  def foobar(x, y, z)
    a = x+1
    b = y*2
    return a*b
  end

  def frobnicate
    10*10
  end
end
