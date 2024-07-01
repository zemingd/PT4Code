N, L = gets.chomp.split(' ').map(&:to_i)
sum = (L...L+N).to_a.reduce(&:+)

sum_lack = if L < 0 && L+N-1 >= 0
  sum
elsif L < 0
  sum - (L+N-1)
else
  sum - L
end

puts sum_lack
