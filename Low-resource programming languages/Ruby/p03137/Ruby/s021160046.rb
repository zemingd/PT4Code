N, M = gets.split.map(&:to_i)
Xs = gets.split.map(&:to_i)

Xs.sort!
sum = 0
diff = []

(Xs.length - 1).times do |i|
  diff.push( [Xs[i + 1] - Xs[i], i] ) 
end

diff.sort!{ |b, a| a[0] <=> b[0] }

diff = diff.slice(0, N-1)

diff.sort!{ |b, a| b[1] <=> a[1] }

head = Xs[0]

diff.length.times do |i|
  b_i = (diff[i][1])
  sum += Xs[b_i] - head
  head = Xs[b_i+1]
end

sum += Xs.last - head

puts sum