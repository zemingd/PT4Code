n = gets.to_i
al = Hash.new(0).merge(gets.split.map(&:to_i).tally)
q = gets.to_i

total = al.sum { |k, v| k*v }
q.times do
  b, c = gets.split.map(&:to_i)
  puts total += (c-b)*al[b]
  al[c] += al[b]
  al[b] = 0
end