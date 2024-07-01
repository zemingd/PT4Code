num = gets.chomp
num.length.times do |count|
	 case num[count]
     	when "1"
       		num[count] = "9"
     	when "9"
       		num[count] = "1"
     end
end
puts num