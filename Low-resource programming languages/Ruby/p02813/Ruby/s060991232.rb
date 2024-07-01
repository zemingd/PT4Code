a = gets.to_i
b_array = gets.strip.split.map(&:to_i)
c_array = gets.strip.split.map(&:to_i)

permutations = b_array.sort.permutation.to_a

b_index = nil
c_index = nil
permutations.each_with_index do |p, index|
  if p == b_array
    b_index = index + 1
  elsif p == c_array
    c_index = index + 1
  end
end

puts b_index