input = readlines()

a, b = input.shift().chomp.split("\s")
s, t = input.shift().chomp.split("\s").map{|x| x.to_i}
u = input.shift().chomp

s2 = a == u ? s - 1 : s
t2 = b == u ? t - 1 : t

puts "#{s2} #{t2}"
