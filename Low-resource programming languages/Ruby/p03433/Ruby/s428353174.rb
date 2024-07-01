N = gets.to_i
A = gets.to_i
mod = N % 500

if mod <= A
	puts "Yes" 
else
	puts "No"
end