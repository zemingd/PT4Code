n = gets.to_i
as = gets.split.map(&:to_i)
q = gets.to_i
bc = q.times.map {gets.split.map(&:to_i)}

table = as.tally
sum = as.sum

bc.each do |b, c|
  tmp = table[b] || 0
  sum += (c - b) * tmp
  puts sum
  if table.has_key?(c)
    table[c] += tmp
  else
    table[c] = tmp
  end
  table.delete(b)
end