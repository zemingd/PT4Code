n = gets.to_i
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

ans = 0

n.times do |i|
  if a[i] >= b[i]
    ans += b[i]
    a[i] -= b[i]
    b[i] = 0
  else
    ans += a[i]
    b[i] -= a[i]
    a[i] = 0
    if a[i+1] >= b[i]
      ans += b[i]
      a[i+1] -= b[i]
      b[i] = 0
    else
      ans += a[i+1]
      b[i] -= a[i+1]
      a[i+1] = 0
    end
  end
end

puts ans
