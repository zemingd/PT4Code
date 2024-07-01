n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).map { |n| [1, n] }
m.times { a << gets.split.map(&:to_i) }
r = 0
a.sort_by(&:last).reverse_each do |b, c|
  r += [b, n].min * c
  break if (n -= b) < 0
end
puts r
