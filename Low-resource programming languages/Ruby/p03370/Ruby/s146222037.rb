N, X = gets.split(' ').map(&:to_i)
ms = []
N.times do
  ms << gets.to_i
end

rest = X - ms.sum 

puts rest / ms.min + N
