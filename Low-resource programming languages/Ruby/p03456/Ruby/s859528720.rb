# https://atcoder.jp/contests/abc086/tasks/abc086_b


a, b = gets.chomp.split
n = (a + b).to_i
cond = Math.sqrt(n).to_i**2 == n
puts cond ? 'Yes' : 'No'
