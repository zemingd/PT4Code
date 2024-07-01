N = gets.to_i
ls = []
(3..9).each do |i|
  ls += ["7","5","3"].repeated_permutation(i).to_a.select { |a| a.uniq.count == 3 }.map { |a| a.join.to_i }
end
puts ls.select { |a| a <= N }.count
