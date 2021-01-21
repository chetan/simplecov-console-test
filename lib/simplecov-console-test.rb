
require "simplecov-console-test/full-coverage"
require "simplecov-console-test/no-coverage"

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

  def branchy(x)
    if x == 1 then
      return 100
    elsif x == 2 then
      return 200
    elsif x == 3 then
      return 300
    else
      return 0
    end
  end
end
