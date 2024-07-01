n = gets.to_i
a = gets.split.map(&:to_i)
result = []

if n.odd?
  middle = a.delete_at(0)
end

a.length.times do |i|
  if i.odd?
    result.unshift(a[i])
  else
    result.push(a[i])
  end
end

if middle
  result.insert(n / 2, middle)
end

puts result.join(' ')
