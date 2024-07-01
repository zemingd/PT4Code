N, M, C = gets.split(" ").map(&:to_i)
b_array = gets.split(" ").map(&:to_i)
counter = 0

N.times do
  a_array = gets.split(" ").map(&:to_i)
  total = 0
  
  a_array.each_with_index do |a, i|
    total += a * b_array[i]
  end
  
  total += C
  counter += 1 if total > 0
end

puts counter