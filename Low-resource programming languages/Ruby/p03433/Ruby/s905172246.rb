N = STDIN.gets.to_i
A = STDIN.gets.to_i 

remainder = N % 500
puts (remainder <= A ? "YES" : "NO")