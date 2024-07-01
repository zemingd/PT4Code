# https://atcoder.jp/contests/abc111/tasks/arc103_a


n = gets.to_i
vs = gets.split.map(&:to_i)

as, bs = vs.each_slice(2).to_a.transpose.map do |ws|
  # ws.group_by(&:itself).map { |k, v| [v.size, k] }.sort.reverse.take(2)
  ws
  .group_by(&:itself)
  .map { |k, vs| [vs.size, k] }
  .group_by { |c, k| c }
  .sort
  .reverse
  .take(2)
  .map { |c, vs| [c, vs.transpose[1].sort] }
  .push([0, []])
end

keep = (
  if as[0][1].size > 1 || bs[0][1].size > 1 || as[0][1] != bs[0][1]
    as[0][0] + bs[0][0]
  else
    [as[0][0] + bs[1][0], as[1][0] + bs[1][0]].max
  end
)

puts n - keep
