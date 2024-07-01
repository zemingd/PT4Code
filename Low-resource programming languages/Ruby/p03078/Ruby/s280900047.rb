# O(K log K) solution
# use -score for O(1) pop

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

score = ->(a, b, c) { as[a] + bs[b] + cs[c] }

init = [0, 0, 0]
comb << [score[*init], *init]

k.times do
  t = comb.max
  comb.delete(t)
  ans << t

  _, a, b, c = t
  opts = [
    [a + 1, b, c],
    [a, b + 1, c],
    [a, b, c + 1],
  ]
  opts.select! { |a, b, c| as[a] && bs[b] && cs[c] }
  opts.map! { |abc| [score[*abc], *abc] }
  comb.merge(opts)
end

ans.map!(&:first)
p(*ans)
