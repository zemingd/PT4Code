s = gets.chomp
sz = s.size
ans = 999
for i in 0..(sz-3)
  ans = [(s.slice(i, 3).to_i - 753).abs, ans].min
end
p ans