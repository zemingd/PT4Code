n, k = gets.split.map(&:to_i)
p = gets.split.map(&:to_f)

p.length.times do |i|
  p[i] = (1..p[i]).to_a.inject(&:+)/p[i].to_f
end

max = 0
(p.length-(k-1)).times do |i|
  cal = 0
  k.times do |j|
    cal += p[i+j]
  end
  max = cal if max < cal
end

print max