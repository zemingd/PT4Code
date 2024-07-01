n=gets.to_i
a=gets.split.map(&:to_i).sort
n.times do |i|
  a[i] = a[i].gcd(a[0])
end
p a.min