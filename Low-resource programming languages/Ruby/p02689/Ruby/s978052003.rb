n, m = gets.to_s.split.map{|t|t.to_i}
h    = [0] + gets.to_s.split.map{|t|t.to_i}

ans = [true] * (n+1)
ans[0] = false

m.times do
  
  a, b = gets.to_s.split.map{|t|t.to_i}
  
  if h[a] < h[b]
    ans[a] = false
  elsif h[a] > h[b]
    ans[b] = false
  else
    ans[a] = ans[b] = false
  end
end

puts ans.count(true)