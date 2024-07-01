n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

a.sort!
m.times do
  b, c = gets.split.map(&:to_i)
  count = 0
  (0...b).each do |i|
    if a[i] < c
      count += 1
    else
      break
    end
  end
  a.shift(count)
  n = a.find_index{|v| v > c}
  if n.nil?
    a += [c] * count
  else
    a.insert(n, *([c]*count))
  end
end
puts a.reduce(:+)
