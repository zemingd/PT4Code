n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
m.times do |_|
  i = a.index(a.max)
  a[i] = (a[i] / 2).floor
end
puts a.inject(:+)