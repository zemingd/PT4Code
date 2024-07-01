ABC = gets.split.map(&:to_i).sort
K = gets.to_i
K.times do |k|
   max = ABC.max * 2 
   ABC.pop
   ABC.push(max)
end
puts ABC.inject(:+)
