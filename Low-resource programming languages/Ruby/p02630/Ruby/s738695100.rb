n = gets.to_i
as = gets.split.map(&:to_i)
q = gets.to_i
bc = q.times.map {gets.split.map(&:to_i)}

table = as.tally
table.default = 0
sum = as.sum

bc.each do |b, c|
  sum += (c - b) * table[b]
  puts sum
  table[c] += table[b]
  table.delete(b)
end