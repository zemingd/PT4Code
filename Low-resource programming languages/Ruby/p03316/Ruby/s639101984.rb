N = gets.to_i
cnt = 0
n = N
while n > 0
  cnt += n % 10
  n /= 10
end
puts N % cnt == 0 ? "Yes" : "No"