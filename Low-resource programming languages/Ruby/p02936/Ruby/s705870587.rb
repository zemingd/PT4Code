n, q = gets.chop.split.map(&:to_i)
c = Array.new(n) {0}

ab = []

(n-1).times do |i|
  ab[i] = gets.chop.split.map(&:to_i)
end
ab.sort_by!{ |x| x[0]}

q.times do |i|
  p, x = gets.chop.split.map(&:to_i)
  c[p - 1] += x
end

(n-1).times do |i|
  c[ab[i][1] - 1] += c[ab[i][0] - 1]
end

puts c


