n,x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
count = 0
(0...n-1).each do |i|
  if x >= a[i]
    x -= a[i]
    count += 1
  end
end
if a[-1] == x
  count += 1
end
puts count