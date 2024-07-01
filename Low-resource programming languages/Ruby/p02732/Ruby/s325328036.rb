n = gets.to_i
a = gets.split.map(&:to_i)

tally = Hash.new { 0 }
a.each do |num|
  tally[num] += 1
end

not_banned = tally.values.inject(0) { |r, v| r + (v * (v - 1) / 2) }

puts a.map { |num| not_banned - (tally[num] - 1) }
