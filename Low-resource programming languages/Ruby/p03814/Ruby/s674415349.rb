a = []
a = gets.split("")
s = []
e = []
for i in 0..a.length
  if a[i] == "A"
    s.push(i)
  elsif a[i] == "Z"
    e.push(i)
  end
end
puts e.max - s.min + 1
    