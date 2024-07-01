a,b,c = gets.split.map(&:to_i)
puts (a<=c && c<=b) ? "YES" : "NO"