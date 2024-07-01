arry_1 = [1,3,5,7,8,10,12]
arry_2 = [4,6,9,11]
arry_3 = [2]

x,y = gets.split.map{|i| i.to_i}

if arry_1.include?(x)&& arry_1.include?(y) ||
   arry_2.include?(x)&& arry_2.include?(y) ||
   arry_3.include?(x)&& arry_3.include?(y)
  puts "YES"
else
  puts "NO"
end
