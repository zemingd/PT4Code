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

exit 1
