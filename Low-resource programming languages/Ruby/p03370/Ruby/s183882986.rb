# frozen_string_literal: true

# Generated by AtcoderGreedy on 2018-04-22
# ABC095 B
# Your code here

$N, $X = gets.chomp.split(' ').map(&:to_i)

$m = []
$N.times do
  $m << gets.chomp.to_i
end

$m = $m.sort

total = $m.reduce(:+)

puts $N + ($X - total) / $m[0]