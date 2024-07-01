N = gets.to_i
S = gets.chomp.chars

require 'set'
ans = 0
(1..(N - 1)).each do |i|
  a = Set.new(S[0...i])
  b = Set.new(S[i..-1])
  c = (a & b).size
  ans = c if c > ans
end
puts ans