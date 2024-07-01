a,b,c,d= gets.split.map(&:to_i)
ans = 0
ans = [b,d].min - [a,c].max if b > c
puts ans