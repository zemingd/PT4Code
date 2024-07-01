n, x = gets.split(" ").map(&:to_i)
ms = []
n.times do
  ms << gets.to_i
end

a = x - ms.reduce(0){|a,e|a+=e}
b = a / ms.min
puts b + n