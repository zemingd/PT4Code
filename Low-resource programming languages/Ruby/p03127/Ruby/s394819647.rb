n = gets.to_i
a = gets.split.map(&:to_i)
while a.uniq.count != 1
  a.sort!
  for i in 1..(a.count - 1)
    dmg = (a[i] / a[0]) * a[0]
    a[i] -= dmg
  end
  a.delete(0)
  a.uniq!
end
puts a[0]