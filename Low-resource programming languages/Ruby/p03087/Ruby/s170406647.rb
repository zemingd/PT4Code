q, n = gets.strip.split.map(&:to_i)
s = gets.strip
pos = n.times.map { gets.strip.split.map { |d| d.to_i - 1} }
t = Array.new(q + 1, 0)

q.times { |i| t[i + 1] = s[i..i+1] == 'AC' ? t[i] + 1 : t[i] }
pos.each { |i, j| puts t[j] - t[i] }
