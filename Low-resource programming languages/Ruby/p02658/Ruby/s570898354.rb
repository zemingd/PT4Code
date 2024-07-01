n = gets.chomp.to_i
mul = 1
array = gets.chomp.split.map{|a| mul *= a.to_i}
#mul = 1
#array.each do |i|
#  mul *= i
#end
if mul > 1000000000000000000
  print "-1"
else
  print mul
end