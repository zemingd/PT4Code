n=gets.to_i
a=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)
c=gets.split.map(&:to_i)
ans = b.inject(:+)

n.times do |i|
  ans += c[a[i]-1] if a[i]+1 == a[i+1]
end
puts ans
