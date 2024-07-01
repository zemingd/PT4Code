N = gets.to_i
As = gets.split.map(&:to_i)
M = 10**9 + 7

f = ->(a, i){((a.count('1') * a.count('0')) << i) % M}
puts As.map{|a| ("%060b" % a).split('')}.transpose.reverse_each.with_index.inject(0){|s, (a, i)| (s + f[a, i]) % M}