n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)
b_arr = gets.chomp.split(" ").map(&:to_i)

count = 0
b_arr.each_with_index do |b, i|
  a = a_arr[i]
  if b <= a then
    count += b
  else
    count += a
    next_b = b - a
    next_a = a_arr[i+1]
    if next_b <= next_a then
      count += next_b
      a_arr[i+1] = next_a - next_b
    else
      count += next_a
      a_arr[i+1] = 0
    end
  end
end
puts count
