N, L = gets.chomp.split.map(&:to_i)

if L >= 0
  puts L
elsif L < 0 && N+L-1 >= 0
  puts 0
else
  puts (L+N-1)
end