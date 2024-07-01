n = gets.to_i
a = gets.split.map(&:to_i)
b = {}
ans = 'YES'
for i in 0..n - 1
  if b[a[i].to_s.to_sym]
    ans = 'NO'
    break
  else
    b[a[i].to_s.to_sym] = 1
  end
end
puts ans
