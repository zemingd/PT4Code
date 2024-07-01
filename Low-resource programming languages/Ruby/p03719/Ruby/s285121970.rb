a,b,c = gets.chomp.split(" ").map(&:to_i)

a <= c && c <= b ? answer = "Yes" : answer = "No"

puts answer