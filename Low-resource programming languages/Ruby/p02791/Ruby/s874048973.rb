n = gets.to_i
a = gets.split.map(&:to_i)

c = 0
mn = a[0]
for i in (0..n-1)
  if a[i] <= mn
    c += 1
    mn = a[i]
  end
end

puts c
