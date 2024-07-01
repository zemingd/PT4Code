N, M = gets.split.map &:to_i
l, r = gets.split.map &:to_i
ans = (l..r).to_a
(M-1).times do
  l, r = gets.split.map &:to_i
  ans = ans & (l..r).to_a
end
puts ans.size