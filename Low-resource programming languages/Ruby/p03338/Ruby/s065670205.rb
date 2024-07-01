require 'set'
N = gets.to_i
S = gets.chomp.chars
# 0, 1, 2 # size: 3
ans = (1...(N - 1)).map do |i|
  left = Set.new(S[0...i])
  right = Set.new(S[i..-1])
  (left & right).size
end.max
puts ans
