n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
tally = Hash.new { 0 }
a.each do |num|
  tally[num] += 1
end

sorted_tally_count = tally.values.sort

puts sorted_tally_count[0...sorted_tally_count.size - k].inject(:+) || 0
