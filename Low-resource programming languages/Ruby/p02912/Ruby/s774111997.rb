n, m = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)

# 値下げ金額が2円以上を探す
m.times do |v|
  target = a.index(a.max)
  a[target] = a[target] / 2
end

print a.inject(:+)
