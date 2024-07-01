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
  t = comb.max_by(&:first)
  comb.delete(t)
  s, a, b, c = t
  ans << s

  opts = [
    [a + 1, b, c],
    [a, b + 1, c],
    [a, b, c + 1],
  ]
  opts.select! { |abc| score[*abc] rescue false }
  opts.map! { |abc| [score[*abc], *abc] }
  comb.merge(opts)
end

p(*ans)
