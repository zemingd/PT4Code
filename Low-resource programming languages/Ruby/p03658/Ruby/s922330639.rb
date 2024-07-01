N,K = gets.split.map(&:to_i)
ls = gets.split.map(&:to_i).sort.reverse
sum = 0
(0..K-1).each do |i| 
    sum += ls[i]
end
puts sum