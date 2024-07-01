n, m = gets.split.map(&:to_i)

hash = [*1..n].product([0]).to_h
m.times do
  a, b = gets.split.map(&:to_i)
  hash[a] += 1
  hash[b] += 1
end

puts hash.values
