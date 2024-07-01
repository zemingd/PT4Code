list = gets.split(' ') 
num = 0

if list[0] < list[1]
	num = num + list[1].to_i
	list[1] = list[1].to_i - 1
elsif 
	num = num + list[0].to_i
	list[0] = list[0].to_i - 1
end

if list[0].to_i < list[1].to_i
	num = num + list[1].to_i
elsif 
	num = num + list[0].to_i
end

puts num
