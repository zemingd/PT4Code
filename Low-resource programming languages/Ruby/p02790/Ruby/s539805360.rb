a, b = gets.split
data = [a*b.to_i, b*a.to_i]
data.sort!
puts data[0].to_i
