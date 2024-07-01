# https://atcoder.jp/contests/abc126/tasks/abc126_b

STRS = %w[NA YYMM MMYY AMBIGUOUS]
S = gets.chomp

f1, f2 = S.scan(/../).map { |w| w.between?('01', '12') ? 1 : 0 }

puts STRS[f1 * 2 + f2]

