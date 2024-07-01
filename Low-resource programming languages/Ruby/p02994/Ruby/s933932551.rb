( N, L ) = gets.split(' ').map(&:to_i)
puts L
sum = 0
if L < 0
  if (N - 1) / 2 < L.abs
    (N-1).times do |i| 
      sum += L + i
    end
    puts sum
  else
    N.times do |i| 
      sum += L + i
    end
    puts sum
  end
else
  (L+1...N+L).each do |i|
    sum += i
  end
  puts sum
end