s = gets.chomp.split(" ").map(&:to_i).sort
puts s == [5,5,7] ? "YES" : "NO"