n, q = gets.chop.split.map(&:to_i)
c = Array.new(n) {0}

ab = Hash.new(0)

(n-1).times do |i|
  a, b = gets.chop.split.map(&:to_i)

  ab[b] = a

end

q.times do |i|
  p, x = gets.chop.split.map(&:to_i)
  c[p - 1] += x
end

(n+1).times do |i|
  next if i==0
  c[i-1] += c[ab[i]-1]
end

puts c


