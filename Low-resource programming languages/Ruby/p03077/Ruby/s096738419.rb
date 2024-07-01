# frozen_string_literal: true

# 最初のボトルネックにひっかかるまでとそのあとを数える
n = gets.chomp.to_i
lis = 5.times.map { gets.chomp.to_i }
neck = lis.min
idx = lis.index(neck)
p idx + 1 + (n / neck).ceil + 5 - (idx + 1)
