n = gets.to_i
a = gets.split(' ').map(&:to_i)
b = gets.split(' ').map(&:to_i)
c = gets.split(' ').map(&:to_i)

sat = 0
previous = -2
a.each do |i|
  sat += b[i-1]
  sat += c[i-2] if previous == i-1
  previous = i
end
print "#{sat}"
