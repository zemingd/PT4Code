n, l = gets.split.map(&:to_i)
calc = Array.new
(1..n).map do |i|
  calc.push(l + i - 1)
end
delete = calc.map{|i| i.abs}.each_with_index.min[1]
calc.delete_at(delete)
puts calc.inject(:+)
