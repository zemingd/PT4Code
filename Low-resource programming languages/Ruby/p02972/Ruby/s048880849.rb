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

puts b[1..-1].size
puts b[1..-1].join(' ') if b[1..-1].size.nonzero?

