n = gets.to_i

a = Array.new(n + 1) { 0 }

n.times do |i|
  a[i + 1] = gets.to_i
end

b = Array.new(n + 1) { 0 }

ans = []

n.downto(1) do |i|
  sum = 0
  k = 2
  
  while (k * i <= n)
    sum += b[k * i]
    k += 1
  end
  
  if (sum % 2) == a[i]
    b[i] = 0
  else
    b[i] = 1
  end
end

ans = b.each_with_index.map do |v, i|
  i if v.nonzero?
end.compact

puts ans.count
puts ans.join(' ') if ans.count.nonzero?