first_line = STDIN.gets.strip
given = first_line.split('')

candidate1 = Array.new(first_line.length)
candidate1.each_index do |idx|
  candidate1[idx] = idx.odd? ? '1' : '0'
end

candidate2 = Array.new(first_line.length)
candidate2.each_index do |idx|
  candidate2[idx] = idx.even? ? '1' : '0'
end

diffs1 = 0
diffs2 = 0
(0...first_line.length).each_with_index do |idx|
  diffs1 = diffs1 + 1 if given[idx] != candidate1[idx]
  diffs2 = diffs2 + 1 if given[idx] != candidate2[idx]
end

puts [diffs1, diffs2].min