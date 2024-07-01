# https://atcoder.jp/contests/abc169/tasks/abc169_b

LIMIT = 10**18
N = gets.to_i
As = gets.split.map(&:to_i)

ans = As.reduce(1) { |memo, a| [memo * a, LIMIT + 1].min}

puts ans > LIMIT ? -1 : ans
