N, L = gets.split(' ').map(&:to_i)

if L >= 0
  eaten = L
elsif L+N-1 <= 0
  eaten = L+N-1
else 
  eaten = 0
end

puts (N * (2*L+N-1))/2 - eaten