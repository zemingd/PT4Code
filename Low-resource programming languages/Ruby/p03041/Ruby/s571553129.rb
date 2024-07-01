# https://atcoder.jp/contests/abc126/tasks/abc126_a


N, K = gets.split.map(&:to_i)
S = gets.chomp


puts S[0...(K - 1)] + S[K - 1].downcase + S[K..-1]
