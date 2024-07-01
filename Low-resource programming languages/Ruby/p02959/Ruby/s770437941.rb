n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

ans = 0
n.times do |i|
  c = a[i] + a[i + 1] - b[i]

  if a[i] > b[i]
    ans += b[i]
  elsif c >= 0
    ans += b[i]
    a[i + 1] = c
  else
    ans += a[i] + a[i + 1]
  end
end
puts ans
