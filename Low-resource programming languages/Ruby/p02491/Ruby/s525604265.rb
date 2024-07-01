str=gets.chomp.split(" ")
a=str[0].to_i
b=str[1].to_i
c=str[0].to_f
d=str[1].to_f
puts "#{a/b} #{a%b} #{c/d}"