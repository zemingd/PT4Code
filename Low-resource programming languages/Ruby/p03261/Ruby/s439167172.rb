n = gets.to_i
w = n.times.map{gets.chomp}
ans = true
for i in 1..n-1
  ans = false if w[i-1][-1] != w[i][0]
end
puts (ans && n == w.uniq.size) ? "Yes" : "No"