n = gets.to_i
count = 0
(3..n.to_s.size).each do |i|
  sets = ['7', '5', '3'].repeated_permutation(i).to_a
  sets.each do |set|
    if set.include?('7') && set.include?('5') && set.include?('3') && set.join.to_i <= n
      count += 1
    end
  end
end

puts count