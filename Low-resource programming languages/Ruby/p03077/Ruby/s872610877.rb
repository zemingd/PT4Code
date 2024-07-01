# frozen_string_literal: true

# 最初のボトルネックにひっかかるまでとそのあとを数える
# 最後3WAなった理由わからんちん

n = gets.chomp.to_i
lis = 5.times.map { gets.chomp.to_i }
neck = lis.min
# ボトルネックで浪費する分 + ボトルネックにひっかかったあと
p (n / neck.to_f).ceil + 5 - 1
