H, W = gets.split.map(&:to_i)
S = readlines.map(&:strip)

@g = []; @g[0] = @g[H + 1] = ['#'] * (W + 2)
(1 .. H).each{|h| @g[h] = ['#'] + S[h - 1].split('') + ['#']}

def bfs(v)
  q = [v]
  d = {}; d[v] = 0
  while !q.empty?
    x, y = q.shift
    [[x + 1, y], [x - 1, y], [x, y + 1], [x, y - 1]].each do |a, b|
      next if @g[a][b] == '#' || !d[[a, b]].nil?
      q << [a, b]
      d[[a, b]] = d[[x, y]] + 1
    end
  end
  d.values.max
end

puts [*1 .. H].product([*1 .. W]).map{|x, y| bfs([x, y]) if @g[x][y] == '.'}.compact.max