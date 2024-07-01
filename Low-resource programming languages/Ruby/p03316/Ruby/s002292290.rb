n = gets.to_i
num = n
sum = 0
while n/10 > 0
	sum += n % 10
	n /= 10
end
sum += n % 10
if num % sum == 0
	puts "Yes"
else
	puts "No"
end
