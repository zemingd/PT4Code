op1,op2,op3=gets.chomp.split.map{|v|v.to_i}
if op1<op2 && op2<op3 then puts "Yes"
else puts "No"
end