n, m = gets.to_s.split.map{|t|t.to_i}
h    = [0] + gets.to_s.split.map{|t|t.to_i}
# d = gets.to_s.to_i
# s = gets.to_s.chomp

ans = [1] * (n+1)
ans[0] = 0

m.times do
  
  a, b = gets.to_s.split.map{|t|t.to_i}
  
  if h[a] < h[b]
    ans[a] = 0
  elsif h[a] > h[b]
    ans[b] = 0
  else
    ans[a] = ans[b] = 0
  end
end

puts ans.sum