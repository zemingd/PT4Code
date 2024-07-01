n = gets.chomp.to_i
d_arr = gets.chomp.split(" ").map(&:to_i)

sum = 0
d_arr.each_with_index do |d1, n1|
  d_arr.each_with_index do |d2, n2|
    next if n1 >= n2
    sum += d1 * d2
  end
end

puts sum
