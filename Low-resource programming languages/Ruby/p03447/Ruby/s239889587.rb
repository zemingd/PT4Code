

#STDIN.each_line {|line|
#  puts "======"
#  puts line.class
#}

x = gets.to_i
a = gets.to_i
b = gets.to_i

#p "============"
#p "#{x}, #{a}, #{b}"

x -= a

rest = x % b

p rest
