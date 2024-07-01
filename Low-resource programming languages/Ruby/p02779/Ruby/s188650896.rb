n = gets.to_i
a = gets.split.map(&:to_i)
b = a.size - 1
cnt = 0
n.times do |e|
  if a.count(a[e]) > 1
      cnt += 1
  end
end
puts cnt == 0 ? 'Yes':'No'
