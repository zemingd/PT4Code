n, m = gets.split.map(&:to_i)
count = {}
m.times do |i|
  a, b = gets.split.map(&:to_i)
  if count[a]
    count[a] += 1
  else
    count[a] = 1
  end
  if count[b]
    count[b] += 1
  else
    count[b] = 1
  end
end
n.times do |i|
  puts count[i+1]
end
