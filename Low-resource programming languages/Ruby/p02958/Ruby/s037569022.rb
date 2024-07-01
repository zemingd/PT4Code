gets
v = gets.chomp.split.map(&:to_i)

vv = v.sort
diff = 0
v.size.times do |i|
  next if v[i] == vv[i]
  diff += 1
  break if diff > 2
end

puts(diff % 2 == 0 ? 'YES' : 'NO')
