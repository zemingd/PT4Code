a,b = gets.chomp.split(" ").map(&:to_i)

ans = (a + b)/2
puts ans.ceil