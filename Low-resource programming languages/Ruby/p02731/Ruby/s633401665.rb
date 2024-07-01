require 'bigdecimal'
require 'bigdecimal/util'  #<= to_d メソッドが使えるようになる
L = gets.chomp.to_i               # 単一整数
L.freeze

ans = (BigDecimal(L) / BigDecimal("3.0"))** 3

puts ans