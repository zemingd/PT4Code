n = gets.to_i
m = gets.split.map(&:to_i)
cnt = 0
for i in 0..n/2-1
  if m[i] != m[i+2]
    m[i] = m[i+2]
    cnt += 1
  end
end
puts cnt