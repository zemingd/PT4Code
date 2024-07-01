n, m = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i).sort
bc = []
m.times do
  b, c = gets.chomp.split(' ').map(&:to_i)
  b.times do
    bc << c
  end
end
bc = bc.sort.reverse
i = 0
bc.each do |c|
  if a[i] <= c
    a[i] = c
    i += 1
  else
    next
  end
end
puts a.inject(0){|sum, n| sum + n}