a,b,c = gets.chomp.split(" ").map(&:to_i)

x - a <= b && x - a >= 0 ? answer = "YES" : answer = "NO"

puts answer