n = gets.to_i
a = gets.split.map(&:to_i)

i = 0
count = 0

while (i < a.count - 1) do
  j = a.count - 1
  while (j > i) do
    if a[j] < a[j - 1]
      a[j - 1], a[j] = a[j], a[j - 1]
      count += 1
    end
    j -= 1
  end
  i += 1
end

puts a.join(" ")
puts count

