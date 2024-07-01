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
mae = []
usiro = []

n.times do |i|
  if i < m
    mae << a[i]
  else
    usiro << a[i]
  end
end
mae.sort!

m.times do |i|
  array = mae.dup
  l[i].times do |index|
    if array[index] === nil
      break
    end
    if array[index] < r[i]
      array[index] = r[i]
    else
      break
    end
  end
  sum = array.inject(:+)
  if max < sum
    max = sum
  end
end

sum2 = usiro.inject(:+)
result = max + sum2
puts result
