# frozen_string_literal: true

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

  (prevpos..(pos - 2)).to_a.map { |i| diff(i, i + 1) }.inject(:+)
end

def dfs(i, prevpos, pos)
  return score(prevpos, pos) + score(pos, $m) if i == $n - 1

  ary = (pos..$m - 1).to_a.map { |p| dfs(i + 1, pos, p) }
  score(prevpos, pos) + ary.min
end

puts dfs(0, 0, 0)
