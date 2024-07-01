n = gets.to_i
a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)
c = gets.split(" ").map(&:to_i)

x = 0
a.each_with_index do |i, idx|
  if a[idx] + 1 == a[idx + 1]
    x += c[a[idx] - 1]
  end
end
puts b.inject(:+) + x
