n = gets.to_i
x = gets()
y = x.split()
a = y.reverse

b = a.map{|w| w.to_i}

puts b.join(" ")
