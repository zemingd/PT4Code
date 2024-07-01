a,b,c = gets.chomp.split(" ").map(&:to_i)
cap = a-b
ans = c-cap
ans = 0 if ans < 0
puts ans