s = gets.chomp.split(//)
num = s.each_with_object([]){ |i,a| a << (i == "+" ? 1 : -1) }
p num.inject(:+)