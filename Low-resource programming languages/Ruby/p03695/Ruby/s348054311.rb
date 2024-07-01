n = gets.to_i
a = gets.split.map(&:to_i)
colors = {}
special = 0
for i in 0...n do
  if a[i] < 3200
    c = a[i] / 400
    colors[c] = true
  else
    special += 1
  end
end
puts "#{colors.size} #{colors.size + special}"
