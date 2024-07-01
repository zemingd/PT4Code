require 'pp'
mod = 10 ** 9 + 7
n = gets.to_i
a = gets.split.map(&:to_i)

# p a

a2 =  a.map{|x|sprintf( '%060d', x.to_s(2)).chars.map(&:to_i) }
# pp a2
a3 = a2.transpose.reverse
# pp a3

a4 = a3.map{|x| cnt = x.count{|x|x==1}; cnt * (x.size - cnt) }
# p a4
a5 = a4.map.with_index{|x, i| x * (2 ** i) % mod }
# pp a5

p a5.inject{|m, i| (i + m) % mod}
# 1 237 103715602
