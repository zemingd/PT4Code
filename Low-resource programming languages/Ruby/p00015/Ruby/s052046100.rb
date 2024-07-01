n = gets.to_i
n.times do
       a = gets.to_i
       b = gets.to_i
       sum = a + b
       if sum.to_s.size > 80
       	  puts "overflow"
       else
	  puts sum
       end
end