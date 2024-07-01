n = gets.to_i
a = gets.split.map(&:to_i)
count = 0
for i in 0...n do
  while a[i] % 2 == 0 do
    a[i] /= 2
    count += 1
  end
end
puts count
