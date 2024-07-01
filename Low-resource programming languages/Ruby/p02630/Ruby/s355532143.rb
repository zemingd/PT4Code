n = gets.to_i
a = gets.split(" ").map(&:to_i)
z = []
a.length.times{ |i|
  z[a[i]] ||= 0
  z[a[i]] += 1
}
sum = a.sum
q = gets.to_i
q.times{
  b, c = gets.split(" ").map(&:to_i)
  if z[b] != nil && z[b] > 0
    sum += (c -b) * z[b]
    z[c] ||= 0
    z[c] += z[b]
    z[b] = 0
  end
  p sum
}