N, K = gets.split.map(&:to_i)
S = gets.chomp
t = S.chars.chunk(&:to_i).map do |a, b|
  [a, b.size]
end
t.unshift([1, 0]) if t[0][0] != 1
t.push([1, 0]) if t[-1][0] != 1
x = 0
u = [0]
t.each { |_a, b| u << x += b }
if K >= u.size / 2
  p u[-1]
else
  bucket = (u.size / 2 - K).times.map do |i|
    u[i * 2 + K * 2 + 1] - u[i * 2]
  end
  p bucket.max
end
