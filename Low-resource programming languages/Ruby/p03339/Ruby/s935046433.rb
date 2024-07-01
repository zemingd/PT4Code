N = gets.chomp.to_i
S = gets.chomp.split('')

east_sum = [0]
(0..N-1).each do |n|
  east_sum[n+1] = east_sum[n] + (S[n] == 'E' ? 1 : 0)
end

results = (1..N).map do |leader|
  leader - 1 - east_sum[leader-1] + east_sum[N] - east_sum[leader]
end

puts results.min