n = gets.chomp.to_i
ary1 = gets.chomp.split("")
ary2 = [0,ary1[0..n-1]].flatten
#p ary1
#p ary2
if n ==1
  puts 1
else
p ary1.zip(ary2).select{|elem| elem[0] !=elem[1]}.length
end