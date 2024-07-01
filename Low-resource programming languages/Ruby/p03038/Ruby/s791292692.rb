n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

m.times.map do
  b, c = gets.split.map(&:to_i)
  a.push(*Array.new(b, c))
end

puts a.sort.last(n).inject(:+)
