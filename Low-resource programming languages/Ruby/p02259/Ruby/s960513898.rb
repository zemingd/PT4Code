n = gets.to_i
a = gets.split.map(&:to_i)
flag = 0
cnt = 0

while flag < n
  (flag..n-1).reverse_each do |i|
    if i == flag then
      break
    end
    v = a[i]
    if v < a[i-1] then
      a[i] = a[i-1]
      a[i-1] = v
      cnt += 1
    end
  end
  flag += 1
end

puts a.join(' ')
puts cnt

