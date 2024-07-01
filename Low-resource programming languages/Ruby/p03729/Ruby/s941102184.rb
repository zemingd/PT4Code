a, b, c = gets.strip.split.map{ |i| i.split("") }

judge = (a.last == b.first) && (b.last == c.first)
puts judge ? "YES" : "NO" 
