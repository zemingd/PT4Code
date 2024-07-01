# https://atcoder.jp/contests/abc153/tasks/abc153_b


H, N = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)
cond = H <= As.reduce(&:+)
puts cond ? 'Yes' : 'No'
