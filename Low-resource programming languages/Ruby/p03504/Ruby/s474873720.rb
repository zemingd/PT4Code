N, C = gets.split.map(&:to_i)
s, t, c = [], [], []
N.times do |i| 
  s[i], t[i], c[i] = gets.split.map(&:to_i)
  c[i] -= 1
end

w = t.max + 1
imos = Array.new(C){ Array.new(w, 0) }
(0...N).each do |i|
  imos[c[i]][s[i] - 1] += 1
  imos[c[i]][t[i]] -= 1
end

(0...C).each do |i|
  (1...w).each do |j|
    imos[i][j] += imos[i][j - 1]
  end
end

(0...C).each do |i|
  (1...w).each do |j|
    imos[i][j] = 1 unless imos[i][j].zero?
  end
end

puts imos.transpose.map{|row| row.reduce(:+)}.max
