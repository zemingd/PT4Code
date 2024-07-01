a, b = gets.split.map(&:to_i)

ans = a/b
ans += 1 if a%b !=0
puts ans