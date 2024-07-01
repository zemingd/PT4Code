n = gets.to_i

sum = n.abs.to_s.each_byte.map{|b| b - 0x30}.inject(:+)

if n % sum == 0 then
  print "Yes"
else
  print "No"
end