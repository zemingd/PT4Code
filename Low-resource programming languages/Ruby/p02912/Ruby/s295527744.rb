n, m = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)

a.sort!.reverse!
# 値下げ金額が2円以上を探す
m.times do |v|
  max = a.max
  c = (max / 2)
  a[a.rindex(max)] = c
end

print a.inject(:+)
