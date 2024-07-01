n = gets.to_i
s = []
h = Hash.new(0)
n.times do |i|
  s[i] = gets.chomp.split("")
  hh = Hash.new(0)
  10.times do |j|
    hh[s[i][j]] += 1
  end
  h[hh] += 1
end
ans = 0
h.values.each do |x|
  ans += x * (x-1) / 2
end
puts ans