a,b = gets.chomp.split(" ").map(&:to_i)
ans = [a+b,a-b,a*b]
puts ans.max