n = gets.to_i
x = gets.chomp.chars
pc = x.count("1")

ur = []
lr = []
ut = 1
lt = -1
n.times do
  ut %= pc + 1
  lt %= pc - 1
  ur.unshift(ut)
  lr.unshift(lt)
  ut <<= 1
  lt <<= 1
end

rl = x[0].to_i
ru = x[0].to_i
1.step(n - 1) do |i|
  t = x[i]
  rl <<= 1
  ru <<= 1
  rl += t.to_i
  ru += t.to_i
  ru %= pc + 1
  rl %= pc - 1
end

n.times do |i|
  res = 1
  if x[i] == "0"
    t = (ur[i] + ru) % (pc + 1)
  else
    t = (lr[i] + rl) % (pc - 1)
  end
    
  while t > 0
    t %= ("%b" % [t]).count("1")
    res += 1
  end
  puts res
end
