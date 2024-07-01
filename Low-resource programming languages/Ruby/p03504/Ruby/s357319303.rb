n, c = $stdin.readline.chomp.split.map(&:to_i)
m = 10 ** 5
tt = Array.new(c) { Array.new(m + 1, 0) }
n.times do
  s, t, ch = $stdin.readline.chomp.split.map(&:to_i)
  tt[ch - 1][s - 1] += 1
  tt[ch - 1][t] -= 1
end

c.times do |ch|
  m.times do |i|
    tt[ch][i + 1] += tt[ch][i]
  end
end

res = 0
tt.transpose.each do |t|
  rc = t.sum
  res = ((res < rc)? rc : res)
end
puts res