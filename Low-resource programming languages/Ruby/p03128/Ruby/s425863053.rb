N, M = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

a_to_count = [2, 5, 5, 4, 5, 6, 3, 7, 6].map.with_index do |n, i|
  [i + 1, n]
end.to_h

match_counts = as.map { |a| a_to_count[a] }.uniq
match_count_a = match_counts.map do |c|
  max_a = as.select { |a| a_to_count[a] == c }.max
  [c, max_a]
end.sort_by { |c, a| -a }

dp = Array.new(N + 1, nil)
dp[0] = []
(0..N).each do |i|
  list = dp[i]
  next unless list
  match_count_a.each do |(c, a)|
    next if i + c > N
    if list.size + 1 > (dp[i + c] || []).size
      dp[i + c] = list + [a]
    end
  end
end
sorted = dp[N].sort_by { |a| -a }
puts sorted.join('')
