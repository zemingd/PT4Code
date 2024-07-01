# https://atcoder.jp/contests/abc159/tasks/abc159_b


S = gets.chomp
l = S.size / 2
T = S[0...l]

cond = (T == T.reverse) && S =~ /^#{T}.#{T}$/
puts cond ? 'Yes' : 'No'
