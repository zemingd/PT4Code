n = gets.chomp.to_i
a = gets.split.map(&:to_i)
b = []
c = []
if n % 2 == 0
  lower_b = 1
  lower_c = 0
else
  lower_b = 0
  lower_c = 1
end
(lower_b..(n-1)).step(2).to_a.reverse_each do |i|
  b.push a[i]
end
(lower_c..(n-2)).step(2) do |j|
  c.push a[j]
end
puts b.join(' ') + ' ' + c.join(' ')
