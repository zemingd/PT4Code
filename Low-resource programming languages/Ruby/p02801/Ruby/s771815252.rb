c = gets
num = (c.ord - 97 + 1) % 26
c_n = (num + 97).chr

puts c_n