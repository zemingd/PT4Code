n,x=gets.split.map(&:to_i)
ms=$stdin.read.split.map(&:to_i)

minm = ms.min
p n + (x - ms.inject(&:+)) / minm