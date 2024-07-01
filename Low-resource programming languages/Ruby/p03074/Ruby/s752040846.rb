_, k = gets.split.map(&:to_i)
s = gets.chomp

# run length
ns = s.chars.chunk(&:itself).map { |(b, a)| [b.to_i, a.size] }
# /(10)*1/
ns.unshift [1, 0] unless ns.first.first == 1
ns << [1, 0] unless ns.last.first == 1
# <len>
ns.map!(&:last)

# 累積和
sums = ns.inject([0]) { |a, n| a << a.last + n }

w = k * 2 + 1
p sums.each_cons(w + 1).map { |a| a.last - a.first }.max || 1
