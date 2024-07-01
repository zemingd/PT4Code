a,b,c,d= gets.split.map(&:to_i)
ans = 0
ans = [b,d].min - [a,c].max if b > c
ans = 0 if ans < 0
puts ans