N = STDIN.gets.to_i
A = STDIN.gets.to_i 

if  N >= 1 && N <= 10**4 &&  A >= 0 &&  A <= 1000
	remainder = N % 500
	puts (remainder <= A ? "Yes" : "No")
else
  puts "No"
end