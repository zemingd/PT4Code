n = gets.to_i
as = gets.split.map(&:to_i)
bs = []
n.times do |i|
  bs << as[i]
  bs.reverse!
end
puts bs.join(" ")
