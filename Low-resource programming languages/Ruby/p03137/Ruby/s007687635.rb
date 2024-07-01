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

def score(prevpos, pos)
  return 0 if pos - 2 < prevpos

  $sorted_x[pos - 1] - $sorted_x[prevpos]
end

def dfs(i, prevpos, pos, psum)
  return score(prevpos, pos) + score(pos, $m) if i == $n - 1
  return INFINITY if pos >= $m - 1

  sc = score(prevpos, pos)
  return INFINITY if sc > $min
  psum += sc
  return INFINITY if psum > $min
  a_min = (pos+1..$m - $n + i + 1).to_a.map { |p| dfs(i + 1, pos, p, psum) }.min
  s = sc + a_min
  $min = [s, $min].min
  s
end

puts dfs(0, 0, 0, 0)
