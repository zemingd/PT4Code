N = gets.to_i
A = gets.split.map {|item| item.to_i}
r2 = A.sort.slice_when(&:!=).map {|x| [x.first, x.size] }
puts Hash[r2].values
(Hash[r2].count...N).each do
    puts 0
end
