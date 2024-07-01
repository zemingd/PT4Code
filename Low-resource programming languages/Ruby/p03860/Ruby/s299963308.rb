d = gets.split.map { |s| s.chomp; s.upcase }
puts d.map { |s| s.slice(0, 1) }.join