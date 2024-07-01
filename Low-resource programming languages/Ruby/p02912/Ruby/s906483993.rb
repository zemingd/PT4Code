n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

m.times do |t|
    max = a.max
    a[a.index(max)] = max / 2
end

puts a.inject(:+)
