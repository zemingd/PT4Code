n = gets.chomp.to_i
ary1 = gets.chomp.split(" ").map(&:to_i)
ary2 = ary1.select{|elem| elem % 2 ==0}.select{|elem| (elem % 3 !=0) and (elem % 5 !=0)}
if ary2.length>0
  puts "DENIED"
else
  puts "APPROVED"
end
