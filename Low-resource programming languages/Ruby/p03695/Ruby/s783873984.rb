n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

c = [0] * 8
w = 0

n.times do |i|
  if a[i] >= 3200 then
    w += 1
  else
    c[ a[i] / 400 ] += 1
  end
end

d = 0
8.times do |i|
  if c[i] > 0 then
    d += 1
  end
end

puts [d, [d + 2, 8].min].map(&:to_s).join(' ')