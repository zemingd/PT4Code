n = gets.to_i
as = gets.split
bs = []
as.each_with_index do |a, i|
  if i.even?
    bs << a
  else
    bs.unshift(a)
  end
end

puts bs.join(" ")