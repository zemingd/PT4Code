rgb = gets.chop.strip.join.to_i

puts rgb % 4 == 0 ? 'YES' : 'NO'