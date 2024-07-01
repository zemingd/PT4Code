N = gets.to_i
P = N.times.map { |n| n+1 }
sum = 0
(N-1).times do |i|
  sum += P[i]%P[i+1]
end
sum += P[-1]%P[0]
p sum