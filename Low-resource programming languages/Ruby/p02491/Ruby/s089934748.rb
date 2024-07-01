x = gets.chomp.split(" ")

a = x[0].to_i
b = x[1].to_i

d = x[0] / x[1]
r = x[0] % x[1]
f = (x[0] / x[1]).to_f

puts "#{d} #{r} #{f}"