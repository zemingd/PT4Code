# https://atcoder.jp/contests/abc078/tasks/abc078_a


X, Y = gets.chomp.split

puts %w(< = >)[(X <=> Y) + 1]
