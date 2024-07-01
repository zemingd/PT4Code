num = gets.split(" ")
a = num[0].to_i
b = num[1].to_i
c = num[2].to_i
d = [a, b, c]
d.sort!
puts "#{d[0]} #{d[1]} #{d[2]}"