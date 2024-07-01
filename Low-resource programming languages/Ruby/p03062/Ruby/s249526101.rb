n = gets.to_i
a = gets.split.map(&:to_i)
c = 0
z = false
a.each do |i|
    c += 1 if i < 0
    z = true if i == 0
end
n.times do |i|
    a[i] *= -1 if a[i] < 0
end
a.sort!
a[0] *= -1 if c%2 == 1 && !z
puts a.inject(:+)