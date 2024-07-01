a = gets.to_i
b_c = gets.split(' ').collect {|item| item.to_i}
s = gets

print (a + b_c[0] + b_c[1]).to_s, " " , s,"\n"

