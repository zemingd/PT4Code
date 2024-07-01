n = gets.to_i
a = gets.split.map(&:to_i)
x = 1
count = 0
for i in 0...n do
  if a[i] == x
    x += 1
  else
    count += 1
  end
end
puts (count == n) ? -1 : count
