a = gets.chomp.to_s
b = gets.chomp.to_s
c = gets.chomp.to_s

ar1 = [a, a, a]
ar2 = [b, b, b]
ar3 = [c, c, c]

puts ar1.slice(0) && ar2.slice(1) && ar3.slice(2)

