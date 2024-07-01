a,b,c = gets.split.map(&:to_i)
ans = b/a
puts ans > c ? c:ans