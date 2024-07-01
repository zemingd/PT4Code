# O(K log K) solution

require 'set'

_, _, _, k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)
cs = gets.split.map(&:to_i)

as.sort!.reverse!
bs.sort!.reverse!
cs.sort!.reverse!

# priority queue like
comb = Set.new
ans = []

# init
comb << [0, 0, 0]

score = ->(a, b, c) { as[a] + bs[b] + cs[c] }

k.times do
  t = comb.max_by(&score)
  comb.delete(t)
  ans << t

  a, b, c = t
  opts = [
    [a + 1, b, c],
    [a, b + 1, c],
    [a, b, c + 1],
  ]
  opts.select! { |a, b, c| as[a] && bs[b] && cs[c] }
  comb.merge(opts)
end

ans.map!(&score)
p(*ans)
