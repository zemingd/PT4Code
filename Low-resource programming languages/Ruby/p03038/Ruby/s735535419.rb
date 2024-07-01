n, m = gets.strip.split.map(&:to_i)
a = gets.strip.split.map(&:to_i)

l = []
r = []

m.times do
  x, y = gets.strip.split.map(&:to_i)
  l << x
  r << y
end

max = 0

l.each_with_index do |li,index|
  mae = []
  usiro = []
  n.times do |i|
    if li > i
      mae << a[i]
    else
      usiro << a[i]
    end
  end
  mae.sort!
  li.times do |i|
    if mae[i] < c[index]
      mae[i] = c[index]
    else
      break
    end
  end
  sum = mae.inject(:+) + usiro.inject(:+)
  if max < sum
    max = sum
  end
end

puts max