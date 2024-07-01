N = gets.to_i
n = N
sn = 0
while n > 0
  sn += n % 10
  n /= 10
end
puts (N % sn) == 0 ? 'Yes' : 'No'
