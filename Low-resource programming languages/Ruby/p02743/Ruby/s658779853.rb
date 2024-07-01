a,b,c = gets.chomp.split(" ").map(&:to_i)
puts Math.sqrt(a) + Math.sqrt(b) < Math.sqrt(c) ? "Yes" : "No"