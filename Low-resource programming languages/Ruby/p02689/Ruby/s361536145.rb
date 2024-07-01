# 3:07

n, m = gets.to_s.split.map{|t|t.to_i}
h    = gets.to_s.split.map{|t|t.to_i}
# a, b = Array.new(m){ gets.to_s.split.map{|t|to_i-1} }.transpose

ans = Array.new(n){ true }

m.times do
  a, b = gets.to_s.split.map{|t|t.to_i-1}
  ans[a] = false if h[a] <= h[b]
  ans[b] = false if h[b] <= h[a]
end
# p ans
puts ans.count(true)