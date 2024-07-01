a = []
a = gets.split("")
b =[]
for i in 0..a.length-1
  if a[i] == "B"
    b.pop
  else
    b.push(a[i].to_i)
  end
end
puts b.join("")
