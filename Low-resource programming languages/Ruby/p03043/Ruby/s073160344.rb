require 'bigdecimal'
require 'bigdecimal/util'

n,k = gets.strip.split.map(&:to_f)
m = n
array = []

coin = 0

while n > 0 do
  x = k / n
  while x > 2 ** coin do
    coin += 1
  end
  array << coin
  n -= 1
end

ans = 0.0.to_f
array.each do |ele|
  ans += (1.to_f / ((2 ** ele) * m).to_f)
end
p ans