_, k = gets.split.map(&:to_i)
s = gets.chomp

# run length
ns = s.chars.chunk(&:itself).map { |(b, a)| [b.to_i, a.size] }
# /(10)*1/
ns.unshift [1, 0] if ns[0][0] == 0
ns << [1, 0] if ns[-1][0] == 0
# <len>
ns.map!(&:last)

# 累積和
sums = ns.inject([0]) { |a, n| a << a.last + n }

w = k * 2 + 1
# 1 only = every 2
ls = (0...sums.size).step(2).map do |l|
  sums.fetch(l + w, sums.last) - sums[l]
end
p ls.max
