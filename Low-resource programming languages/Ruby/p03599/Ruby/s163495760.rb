a, b, c, d, e, f = gets.split.map(&:to_i)
a *= 100
b *= 100

ws = []
(0..(f/a)).each do |ai|
  (0..(f/b)).each do |bi|
    ws << ai * a + bi * b
  end
end
ws = ws.uniq.sort.select {|w| w <= f && w > 0}

ss = []
max_s = f * e / 100
(0..(max_s/c)).each do |ci|
  (0..(max_s/d)).each do |di|
    ss << ci * c + di * d
  end
end
ss = ss.uniq.sort.select {|s| s <= max_s}

max_dens = 0.0
max_w = 0
max_s = 0
ws.each do |w|
  s = ss.select {|s| s <= w * e / 100}[-1]
  next if s + w > f
  
  dens = 100 * s / (s + w)
  if dens >= max_dens
    max_dens = dens
    max_w = w
    max_s = s
  end
end

puts [(max_w+max_s), max_s].join(' ')