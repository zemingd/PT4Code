n = gets.to_i
s = gets.to_s

if n%2==1
 puts "No" 
end

before_half = s[0, s/2]
after_half = s[s/2+1, s/2]

if before_half == after_half
	puts "Yes"
else
	puts "No"
end