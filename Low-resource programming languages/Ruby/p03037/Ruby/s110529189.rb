N, M = gets.split.map(&:to_i)
Ls = []
Rs = []
M.times do |i|
  Ls[i], Rs[i] = gets.split.map(&:to_i)
end

ans = Rs.min - Ls.max + 1
puts ans

