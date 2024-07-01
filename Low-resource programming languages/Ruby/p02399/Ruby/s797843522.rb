op1,op2=STDIN.gets.chomp.split.map{|v|v.to_i}
str='%d %d %.5f'%([op1/op2,op1%op2,op1.to_f/op2.to_f])
puts str