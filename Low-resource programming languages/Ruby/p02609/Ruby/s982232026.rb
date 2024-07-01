n = gets.to_i
x = gets.chomp.chars
pc = x.count("1")

ur = []
lr = []
ut = 1
lt = -1
rl = x[0].to_i
ru = x[0].to_i

n.times do |i|
  ut %= pc + 1
  ur.unshift(ut)
  ut <<= 1
  if i > 0
    t = x[i]
    ru <<= 1
    ru += t.to_i
    ru %= pc + 1
    if pc - 1 > 0
      rl <<= 1
      rl += t.to_i
      rl %= pc - 1
    end
  end

  if pc - 1 > 0
    lt %= pc - 1
    lr.unshift(lt)
    lt <<= 1
  end
end

n.times do |i|
  res = 1
  if x[i] == "0"
    t = (ur[i] + ru) % (pc + 1)
  elsif pc - 1 == 0
    puts "0"
    next
  else
    t = (lr[i] + rl) % (pc - 1)
  end
    
  while t > 0
    t %= ("%b" % [t]).count("1")
    res += 1
  end
  puts res
end
