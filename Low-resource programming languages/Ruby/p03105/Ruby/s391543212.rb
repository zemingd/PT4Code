a,b,c = gets.split.map(&:to_i)
ans = b/a
ans = c if ans > c
puts ans