n, m = gets.split.map(&:to_i)

array = Array.new(n, 0)

m.times do
  a, b = gets.split.map(&:to_i)
  array[a-1] += 1
  array[b-1] += 1
end

puts array