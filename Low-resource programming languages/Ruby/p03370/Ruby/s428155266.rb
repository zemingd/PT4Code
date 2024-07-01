n,_x = gets.chomp.split.map(&:to_i)
ms = n.times.map{gets.to_i}.sort
x = _x - ms.inject(:+)
sum = n + x/ms[0]
puts sum
