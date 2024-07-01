# https://atcoder.jp/contests/abc106/tasks/abc106_c



S = gets.chomp
K = gets.to_i

cut_length = [S.length, K].min - 1
cut_s = S[0..cut_length]

puts (cut_s.chars - ['1']).first || '1'
