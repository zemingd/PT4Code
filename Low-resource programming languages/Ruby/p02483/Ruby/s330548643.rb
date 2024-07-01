x = gets.chomp.split(" ")
a = x[0].to_i
b = x[1].to_i
c =x[2].to_i
ary << a
ary << b
ary << c

ary.map{|i| i.to_i}

puts ary[1]," ",ary{2}," ",ary[3]	