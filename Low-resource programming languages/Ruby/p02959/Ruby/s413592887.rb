n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
sum = a.inject(:+)
n.times do |i|
  t = [a[i],b[i]].min
  a[i] -= t
  b[i] -= t
  u = [a[i+1],b[i]].min
  a[i+1] -= u
  b[i] -= u
end

p sum - a.inject(:+)
