# https://atcoder.jp/contests/abc101/tasks/abc101_b



N = gets.to_i

puts N % N.to_s.chars.inject(0) { |result, char| result + char.to_i } == 0 ? 'Yes' : 'No'
