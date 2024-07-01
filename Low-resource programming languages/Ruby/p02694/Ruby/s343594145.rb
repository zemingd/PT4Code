XX = ARGF.gets.chomp.to_i

xx = 100
yy = 0

while xx < XX
  xx = xx * 101 / 100
  yy += 1
  #puts xx
end

puts yy


