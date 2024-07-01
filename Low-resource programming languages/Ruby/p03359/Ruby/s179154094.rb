a, b = gets.chop.split.map(&:to_i)

ans = a - 1
ans += 1 if a <= b

puts ans 
