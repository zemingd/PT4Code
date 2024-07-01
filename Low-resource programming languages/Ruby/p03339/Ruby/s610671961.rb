n = gets.to_i
s = gets.chomp.chars

lw = []
re = []

n.times do |i|
  lw[i] = s[i] == 'W' ? (lw[i - 1] || 0) + 1 : (lw[i - 1] || 0)
  re[n - 1 - i] = s[n - 1 - i] == 'E' ? (re[n - i] || 0) + 1 : (re[n - i] || 0)
end

lw << 0
re << 0

min = 1000000
n.times do |i|
  min = [min, (lw[i-1] || 0) + (re[i+1] || 0)].min
end

puts min