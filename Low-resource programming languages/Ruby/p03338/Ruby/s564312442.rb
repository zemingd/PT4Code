require 'set'
N = gets.to_i
S = gets.chomp.chars
ans = 0
(1...N).each do |i|
  size = (Set.new(S[0...i]) & Set.new(S[i..-1])).size
  ans = size if size > ans
end
puts ans
