# https://atcoder.jp/contests/abc122/tasks/abc122_b


S = gets.chomp

puts S.scan(/[ACGT]+/)&.map(&:size)&.max || 0
