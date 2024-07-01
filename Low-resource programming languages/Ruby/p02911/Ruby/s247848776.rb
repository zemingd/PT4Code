n, k, q = gets.split.map(&:to_i)
w = q.times.map { gets.to_i }
p = [].fill(k - q, 0...n)
w.each { |i| p[i - 1] += 1 }
puts p.map { |j| j > 0 ? 'Yes' : 'No'}.join("\n")