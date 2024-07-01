_a = gets.to_i
b_array = gets.strip.split.map(&:to_i)
c_array = gets.strip.split.map(&:to_i)

permutations = b_array.sort.permutation.to_a

b_index = nil
c_index = nil
permutations.each_with_index do |p, index|
  b_index = index + 1 if p == b_array
  c_index = index + 1 if p == c_array
end

puts (c_index - b_index).abs
