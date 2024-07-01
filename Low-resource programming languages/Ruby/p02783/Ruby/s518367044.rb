a = gets.chomp.split.map(&:to_i)
c = 0
while a[0] > 0 do
  a[0] = a[0] - a[1]
  c = c + 1
end
puts c