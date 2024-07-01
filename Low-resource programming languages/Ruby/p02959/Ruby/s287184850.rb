n = gets.chomp.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
ans = 0

n.times do |i|
  if b[i] >= a[i]
    ans += a[i]
    if b[i]-a[i] >= a[i+1]
      ans += a[i+1]
      a[i+1] = 0
    else
      ans += b[i]-a[i]
      a[i+1] -= b[i]-a[i]
    end
  else
    ans += b[i]
  end
end
puts ans