n,m = gets.chomp.split(" ").map(&:to_i)
l = []
r = []
m.times do |i|
  l[i],r[i] = gets.chomp.split(" ").map(&:to_i)
end
from = 1
to = n
m.times do |i|
  if l[i] > from
    from = l[i]
  end
  if r[i] < to
    to = r[i]
  end
end
if from <= to
  puts to-from+1
else
  puts 0
end