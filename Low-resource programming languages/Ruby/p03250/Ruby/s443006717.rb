a, b, c = gets.chomp.split(" ").map(&:to_i).sort
puts (c.to_s+b.to_s).to_i+a.to_i
