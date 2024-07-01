# frozen_string_literal: true

n = gets.to_i
x = gets.chomp
@bits = x.length
x = x.to_i(2)
@p = {}
def popcount(n)
  return @p[n] if @p[n]

  @p[n] = n.to_s(2).count('1')
end

def f(n)
  next_n = n % popcount(n)
  next_n.zero? ? 1 : 1 + f(next_n)
end

def xn(x, i)
  x ^= 1 << (@bits - i)
  x
end

(1..n).each do |i|
  puts f(xn(x, i))
end
