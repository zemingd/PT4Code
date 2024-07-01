n = gets.to_i
x = gets.split.map(&:to_i)
ans = 1000000
(1..100).each do |p|
  ans = [ans, x.map{|xi|(xi - p) ** 2}.sum].min
end
puts ans
