_, *values = readlines.map(&:chomp).map(&:to_i)

def f(a, b)
  x = a * b
  swap = lambda {|a, b| return b, a}
  a, b = swap.call(a, b) if a < b

  r = a % b
  while(r!=0)
    a = b
    b = r
    r = a % b
  end
  x / b
end

p values[1..-1].reduce(values.first) {|r, e| f(r, e)}