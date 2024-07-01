# frozen_string_literal: true

INFINITY = 10000000
$min = INFINITY
$n, $m = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)

if $n >= $m
  puts 0
  exit 0
end

$sorted_x = x.sort

def diff(pos1, pos2)
  $sorted_x[pos2] - $sorted_x[pos1]
end

def score(prevpos, pos)
  return 0 if pos - 2 < prevpos

  (prevpos..(pos - 2)).to_a.inject(0) { |sum, i| sum += diff(i, i + 1) }
end

def dfs(i, prevpos, pos)
  return score(prevpos, pos) + score(pos, $m) if i == $n - 1
  return INFINITY if pos >= $m - 1

  a_min = (pos+1..$m - 1).to_a.map { |p| dfs(i + 1, pos, p) }.min
  sc = score(prevpos, pos)
  return INFINITY if sc > $min
  s = sc + a_min
  $min = [s, $min].min
  s
end

puts dfs(0, 0, 0)
