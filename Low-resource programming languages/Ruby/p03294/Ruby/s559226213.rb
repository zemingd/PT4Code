# あまりなので割る数以上になることはない
# 従って割る数-1を足す
n = gets.chomp.to_i
puts gets.chomp.split.map{|a| a.to_i-1}.inject(:+)