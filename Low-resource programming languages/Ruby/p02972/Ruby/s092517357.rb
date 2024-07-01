n = gets.to_i

a = Array.new(n + 1) { 0 }

n.times do |n|
  a[n + 1] = gets.to_i
end

b = Array.new(n + 1) { 0 }

ans = []

n.downto(1) do |i|
  sum = i.step(n, i).each.inject(0) do |memo, k|
    memo += b[k]
  end
  
  b[i] = sum^a[i]
end

ans = b.each_with_index.map do |n, i|
  i if n.nonzero?
end.compact

puts ans.count
puts ans.join(' ')