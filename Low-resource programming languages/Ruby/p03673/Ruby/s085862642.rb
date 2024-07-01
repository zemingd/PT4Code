n = gets.to_i
as = gets.split
bs = []
as.each do |a|
  bs << a
  bs.reverse!
end

puts bs.join(" ")