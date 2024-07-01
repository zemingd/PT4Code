hon = [2,4,5,7,9]
pon = [0,1,6,8]
n = gets.to_i % 10
if hon.include?(n)
	puts "hon"
elsif pon.include?(n)
	puts "pon"
else
	puts "bon"
end