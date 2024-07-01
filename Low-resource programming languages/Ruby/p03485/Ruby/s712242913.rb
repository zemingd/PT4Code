a,b = gets.split(" ").map{|n| n.to_i}
int_result = ( a + b ) / 2
dec_result = Float( ( a + b ) / 2r ) - int_result
if dec_result > 0
  puts  int_result+1
else
  puts int_result
end