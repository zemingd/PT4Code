#  = gets.chomp.to_i
N, K, Q = gets.chomp.split.map(&:to_i)
# S = gets.chomp

## Ex.
# answer by 0
# => [K, K-1, ..., K-1]

# We want to calculate the maximum difference of (Q + A[i] - K)
# score[i] is the coreect count of each player-i.

scores = Array.new(N, K - Q)
Q.times do
  i = gets.chomp.to_i - 1
  scores[i] += 1
end

scores.each do |score|
  if score > 0
    print "Yes\n"
  else 
    print "No\n"
  end
end
