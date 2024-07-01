n = gets.to_i
a = gets.split.map(&:to_i).sort
d = [a.shift]
count = 0
count += 1 unless a.index(d[0])

a.each do |e|
  next if d.any? { |i| e % i == 0 }

  d << e
  count += 1
end

puts count