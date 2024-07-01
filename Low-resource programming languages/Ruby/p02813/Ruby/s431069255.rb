n = gets.chomp.to_i
p = gets.split(" ").map(&:to_i)
q = gets.split(" ").map(&:to_i)

array = []
(1..n).to_a.permutation do |x|
    array << x
end

puts (array.index(p) - array.index(q)).abs
