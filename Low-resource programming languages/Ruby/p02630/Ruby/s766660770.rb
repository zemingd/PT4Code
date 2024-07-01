n = gets.to_i
a = gets.split.map(&:to_i)
q = gets.to_i
hash = Hash.new(0)
a.each do |i|
  hash[i] += 1
end
sum = a.sum
res = []
q.times do
  b,c = gets.split.map(&:to_i)
  tmp = hash[b]
  hash[b] = 0
  hash[c] += tmp
  sum -= b * tmp
  sum += c * tmp
  res << sum
end
puts res

