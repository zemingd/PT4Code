n, x = gets.split.map(&:to_i)
ms = n.times.map{ gets.to_i }

ms.sort!

all = ms.inject(:+)
p n + ((x - all) / ms[0])
