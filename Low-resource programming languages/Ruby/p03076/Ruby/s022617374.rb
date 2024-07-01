a = 5.times.map{gets.chomp.to_i}
m = a.map{|i|(i - 1) % 10 + 1}.min
cnt = 0
a = a.map{|i|cnt += re = (i + 9) / 10 * 10; re}
puts cnt - 10 + m
