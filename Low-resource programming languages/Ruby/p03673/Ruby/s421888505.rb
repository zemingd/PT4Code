n = gets.to_i
as = gets.split.map(&:to_i)
bs = []
index = as.length - 1
until index < 0
  bs << as[index]
  as.delete_at(index)
  index -= 2
end
bs += as
puts bs.join(" ")
