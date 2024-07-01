a,b = gets.split.map(&:to_i)
ans = ( a + b ) % 2 == 0 ? ( a + b ) / 2 : "IMPOSSIBLE"
puts ans