n = gets.to_i
ary = gets.split.map(&:to_i)

puts ary.uniq.size == n ? 'YES' : 'NO'