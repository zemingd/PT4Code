n = gets.chomp.to_i
p_arr = gets.chomp.split(" ").map(&:to_i)
q_arr = gets.chomp.split(" ").map(&:to_i)

a = nil
b = nil
(1..n).to_a.permutation.to_a.each_with_index do |arr, i|
  if a.nil? && p_arr == arr
    a = i
  end
  if b.nil? && q_arr == arr
    b = i
  end
end

puts (a - b).abs
