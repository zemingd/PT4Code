i = gets.to_i
arry = gets.split(' ').map(&:to_i)

num = 1
arry.each do |a|
  num = a * num
end

if num <=  1000000000000000000
	puts num
else 
  	puts -1
end