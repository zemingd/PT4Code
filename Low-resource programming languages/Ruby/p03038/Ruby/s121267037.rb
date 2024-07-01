n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

m.times do
  b, c = gets.split.map(&:to_i)
  a.sort!
  (0...b).each do |i|
    if a[i] < c
      a[i] = c
    end
  end
end
puts a.reduce(:+)
