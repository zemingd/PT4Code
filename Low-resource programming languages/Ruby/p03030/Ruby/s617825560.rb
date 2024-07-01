n = gets.chomp.to_i
list = []
for a in 1..n
  restaurant = []
  s, p = gets.chomp.split(&:to_s)
  restaurant << a
  restaurant << s
  restaurant << p.to_i
  list << restaurant
end
list.sort! do |a, b|
  (b[2] <=> a[2])
end
list.sort! do |a, b|
  (a[1] <=> b[1])
end
for b in 0..n - 1
  puts list[b][0]
end
