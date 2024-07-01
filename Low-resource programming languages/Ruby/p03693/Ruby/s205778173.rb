rgb = gets.gsub(' ', '').to_i

puts (rgb % 4) == 0 ? 'YES' : 'NO'