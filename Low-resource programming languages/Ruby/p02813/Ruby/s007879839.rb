a = gets.to_i
b_array = gets.strip.split.map(&:to_i)
c_array = gets.strip.split.map(&:to_i)

permutations = b_array.sort.permutation.to_a

b_index = nil
c_index = nil

puts b_index