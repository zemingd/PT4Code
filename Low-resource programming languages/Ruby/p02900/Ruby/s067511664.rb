require 'prime'
A,B = gets.split.map(&:to_i)

fa = A.prime_division.flatten.uniq
fb = B.prime_division.flatten.uniq

f = (fa & fb) << 1

# 双方の素因数で共通なもの + 1を選ぶ
p f.uniq.size