N = gets.to_i
as = gets.split.map(&:to_i)
count_table = Hash.new { 0 }
as.each { |a| count_table[a] += 1 }
candidates = count_table.select { |_, c| c >= 2 }.sort_by { |(a, _)| -a }
if candidates.size >= 1 && candidates[0][1] >= 4
  puts candidates[0][0] ** 2
elsif candidates.size >= 2
  puts candidates[0][0] * candidates[1][0]
else
  puts 0
end
