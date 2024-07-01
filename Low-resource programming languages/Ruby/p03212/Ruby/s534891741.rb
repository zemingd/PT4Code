n = gets.chomp
n_753 = []
count = 0
(1..n.size).each do |i|
  n_753 += [3,5,7].repeated_permutation(i).to_a.map{|k| k.join.to_i}
end
n_753 = n_753.select do |i|
  ["3","5","7"].all?{|k| i.to_s.include?(k)}
end
n_753.each do |i|
  count += 1 if n.to_i >= i
end
puts count
