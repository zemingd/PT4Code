n = gets.to_i
a = gets.chomp.split.map(&:to_i)

b = Array.new(n) { 0 }

ans = []

(n - 1).downto(0) do |i|
  sum = 0
  k = 2
  
  while (k * (i + 1) <= n)
    sum += b[k * (i + 1) - 1]
    k += 1
  end
  
  if (sum % 2) == a[i]
    b[i] = 0
  else
    b[i] = 1
  end
end

ans = b.each_with_index.map do |v, i|
  i + 1 if v.nonzero?
end.compact

puts ans.count
puts ans.join(' ') if ans.count.nonzero?