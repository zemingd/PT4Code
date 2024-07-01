# abc106 B
require "prime"

n = gets.to_i
cnt = 0
1.upto(n) do |i|
  next if i.even?
  cnt+=1 if 2 ** i.prime_division.size == 8
end
p cnt

