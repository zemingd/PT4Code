# AtCoder Beginner Contest 080B

n = gets.to_i
task = n
sum = 0

while task >  10
	sum  = sum + task % 10
	task = task / 10 
end

#sum = sum + task

if n % sum == 0 
	puts "Yes"
else
	puts "No"
end