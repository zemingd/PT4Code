n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0
p = 1

60.times do |k|
  p *= 2 if k!=0
  p %= 1000000007
  z = 0
  o = 0
  n.times do |i|
    if a[i][k] == 0
      z += 1
    else
      o += 1
    end
  end
  ans += z*o*p
  ans %= 1000000007
end

puts ans