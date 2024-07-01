n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

s = 0
n.times do |i|
  s += b[a[i]-1]
  s += c[a[i-1]-1].to_i if i > 0 && a[i-1] + 1 == a[i]
end
puts s