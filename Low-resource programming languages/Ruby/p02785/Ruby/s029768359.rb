N, K = gets.split(' ').map(&:to_i)
hs = gets.split(' ').map(&:to_i)

sum = hs.inject(:+)
if K >= N
  puts 0
else
  puts sum - hs.max(K).inject(&:+)
end
