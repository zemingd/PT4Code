rgb = gets.chop.map(&:to_i).join.to_i
puts rgb % 4 == 0 ? "YES" : "NO"