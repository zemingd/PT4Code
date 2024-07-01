rgb = gets.split.map(&:to_i)
rgb = rgb.map(&:to_s).join

puts rgb % 4 == 0 ? 'YES' : 'NO'
