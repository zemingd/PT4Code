N, M = gets.split.map &:to_i
l, r = gets.split.map &:to_i
ans = (l..r).to_a
(M-1).times do
  l, r = gets.split.map &:to_i
  new_l = ans.find_index{ |i| i >= l } ? ans.find_index{ |i| i >= l } : 0
  new_r = ans.find_index{ |i| i > r } ? ans.find_index{ |i| i > r } -1 : -1
  ans = ans.slice(new_l..new_r)
end
puts ans.size