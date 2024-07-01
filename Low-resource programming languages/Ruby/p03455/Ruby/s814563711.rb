# https://atcoder.jp/contests/abc086/tasks/abc086_a


a, b = gets.split.map(&:to_i)
cond = (a * b).odd?
puts cond ? 'Odd' : 'Even'
