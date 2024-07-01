N, L = gets.chomp.split.map(&:to_i)
sum = (L + N+L-1) * N / 2
 
if L >= 0
  puts (sum - L)
elsif L < 0 && N+L-1 >= 0
  puts sum
else
  puts (sum - (N+L-1))
end