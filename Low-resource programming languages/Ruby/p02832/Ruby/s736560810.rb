n = gets.to_i
a = gets.split.map(&:to_i)
if a.include? 1
  v = 1
  i = a.index 1
  while a[i+1..n-1].index v + 1
    v += 1
    i = a[i+1..n-1].index v
  end
  c = n -v
else
  c = -1
end
puts c