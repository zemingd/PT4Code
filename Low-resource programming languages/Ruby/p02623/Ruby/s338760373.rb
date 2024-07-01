# frozen_string_literal: true

n, m, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
MAX = 10**9 + 1

asum = [0]
bsum = [0]

n.times { |i| asum << asum.last + a[i] }
m.times { |i| bsum << bsum.last + b[i] }

i = 0
j = 0
ans = [0, 0]
asum.each do |as|
  break if as > k

  j = bsum.bsearch_index { |bs| as + bs > k }
  j ||= m + 1
  j -= 1 # bsearchでoverした分を引く
  ans = [i, j] if i + j > ans.sum
  i += 1
end

puts ans.sum
