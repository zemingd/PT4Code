N, M = gets.chomp.split(" ").map(&:to_i)
W = []
M.times{
  W << gets.chomp.split(" ").map(&:to_i)
}

W.sort_by!{|a, b| b}
ans = 0
until W.empty? do
  l = W[0]
  W.select!{|a, b| a >= l[1]}
  ans += 1
end

puts ans
