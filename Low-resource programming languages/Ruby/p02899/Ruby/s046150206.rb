gets.to_i
line = gets.split.map(&:to_i)
ary = []
line.each.with_index(1) { |l, i| ary[l - 1] = i }

puts ary.join(' ')