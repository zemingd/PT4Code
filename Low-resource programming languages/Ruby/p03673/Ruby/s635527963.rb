n = gets.to_i
as = gets.split
bs = []
(n - 1).step(0, -2) do |i|
  bs.push(as[i])
end
(n % 2).step(n - 1, 2) do |i|
  bs.push(as[i])
end
puts bs.join(' ')
