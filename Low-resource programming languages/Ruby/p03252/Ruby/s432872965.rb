s = gets.chomp
t = gets.chomp
s_hist = Array.new(26, 0)
t_hist = Array.new(26, 0)
n = s.length
for i in 0...n do
  s_hist[s[i].ord - 97] += 1
  t_hist[t[i].ord - 97] += 1
end
puts (s_hist.sort == t_hist.sort) ? "Yes" : "No"
