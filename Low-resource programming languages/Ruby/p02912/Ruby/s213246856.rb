n, m = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)

a.sort!
# 値下げ金額が2円以上を探す
m.times do |v|
  a_max = a.max
  c = (a_max / 2)
  a[a_max] = c
end

print a.inject(:+)
