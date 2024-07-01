n, m = gets.split.map(&:to_i)
counts = Hash.new(0)
m.times do
  a, b = gets.split.map(&:to_i)
  counts[a] += 1
  counts[b] += 1
end
(1..n).each do |city|
  puts counts[city]
end
