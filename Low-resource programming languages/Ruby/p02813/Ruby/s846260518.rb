n = gets.chomp.to_i
p = gets.split(" ").map(&:to_i).join
q = gets.split(" ").map(&:to_i).join

array = []
(1..n).to_a.permutation do |x|
    array << x.join
end

p (array.index(p) - array.index(q)).abs
