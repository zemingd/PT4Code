a,b,c,d = gets.chomp.split(" ").map(&:to_i)
puts ((c - a).abs <= d || ((a - b).abs <= d && (b - c).abs <= d)) ? "Yes" : "No"