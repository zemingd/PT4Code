a,b,c = gets.chomp.split.map(&:to_i)
a_tmp = a
b_tmp = b
b = a_tmp
a = b_tmp
a_tmp_2 = a
c_tmp = c
a = c_tmp
c = a_tmp_2

puts "#{a} #{b} #{c}"