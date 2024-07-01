a, b, c = gets.split(" ").map(&:to_i)
r = [5, 7, 5].sort
abc = [a, b, c].sort
puts r == abc ? "YES" : "NO"