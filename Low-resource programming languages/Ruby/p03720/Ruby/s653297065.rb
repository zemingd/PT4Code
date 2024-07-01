n, m = gets.split.map(&:to_i)
count = {}
n.times do |i|
  count[i] = 0
end
m.times do |i|
  a, b = gets.split.map(&:to_i)
  count[a] += 1
  count[b] += 1
end
n.times do |i|
  puts count[i+1]
end