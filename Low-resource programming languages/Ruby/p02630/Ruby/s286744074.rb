N = gets.to_i
AN = gets.split.map(&:to_i)
BC = gets.chomp.to_i.times.map { gets.split.map(&:to_i) }

sum = AN.sum
counts = AN.group_by(&:itself).to_h { |k, v| [k, v.count] }
# counts = AN.tally
# counts.default = 0

BC.each do |bc|
  b, c = bc
  counts[b] ||= 0
  counts[c] ||= 0
  sum = sum + (c - b) * counts[b]
  counts[c] = counts[c] + counts[b]
  counts[b] = 0
  puts sum
end
