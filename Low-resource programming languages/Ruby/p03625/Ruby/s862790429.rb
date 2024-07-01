n = gets.to_i
a = gets.split.map(&:to_i).sort.reverse

xy = []
i = 0
while i < n do
  if a[i] == a[i + 1]
    xy << a[i]
    break if xy.size == 2
    i += 1
  end
  i += 1
end

if xy.size == 2
  puts xy[0] * xy[1]
else
  puts 0
end
