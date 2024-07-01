l, r = gets.split.map(&:to_i)

l1 = l % 2019
r1 = r % 2019

min = 100000
(l1..r1).to_a.combination(2) do |c|
  i = c[0]
  j = c[1]
  next unless i < j
  min = (i * j) % 2019 < min ? (i * j) % 2019 : min
end

puts min
