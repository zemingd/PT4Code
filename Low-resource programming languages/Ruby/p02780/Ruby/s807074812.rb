n, cnt = gets.chomp.split(" ").map(&:to_i)
dices = gets.chomp.split(" ").map(&:to_i)
tmp = 0
(n - cnt + 1).times{ |i| res = 0; cnt.times{ |j| res = res + dices[i + j] }; tmp = res if tmp < res }
puts (tmp.to_f + cnt.to_f) / 2
