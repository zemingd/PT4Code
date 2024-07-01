N = gets.to_i
A = gets.to_i
if A == 0 && N % 500 != 0 then
	puts "No"
elsif A == 0 && N % 500 == 0 then
	puts "Yes"
elsif A != 0 && N % 500 <= A then
	puts "Yes"
else
	puts "No"
end