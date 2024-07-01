n = gets.to_i
a = gets.split(" ").map(&:to_i)

a.sort!

min = 0
while a.min != min
  b = []
  (a.length - 1).times.each do |i|
    b << a[i+1].to_i - a[i].to_i
  end
  b.each do |j|
    a << j
  end
  a.sort!
  a.uniq!
  min = a.min
  break if a.min == 1
end
puts min