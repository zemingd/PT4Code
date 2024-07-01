r, g, b = gets.split.map(&:to_i)
s = "#{r}#{g}#{b}".to_i
puts s%4==0 ? "YES" : "NO"