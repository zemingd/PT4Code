N, M = gets.chomp.split.map(&:to_i)
votes = gets.chomp.split.map(&:to_i)
sum = votes.sum
overs = votes.filter { |v| v >= sum * 1.0 / (4*M) }
if overs.count >= M
  puts "Yes"
else
  puts "No"
end

