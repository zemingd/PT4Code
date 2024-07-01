a = []
a = gets.split("")
b =[]
c = 0
for i in 0..a.length-1
  if a[i] == "B"
    c = b.pop
  else
    b.push(a[i].to_i)
  end
end
puts b.join("")