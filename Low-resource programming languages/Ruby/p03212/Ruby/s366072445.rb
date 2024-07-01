n = gets.chomp.to_i

a = [3, 5, 7]
l = []
(3..n.to_s.chars.size).each do |i|
  x = a.repeated_permutation(i).map{|arr| arr.map(&:to_s).join}.select{|x|x.include?("3") && x.include?("7") && x.include?("5")}.map(&:to_i).uniq
  l += x
end

idx = l.index(l.bsearch{|r| r > n})
if idx.nil?
  idx = n < 357 ? 0 : 26484
end

puts idx
