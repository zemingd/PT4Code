n, m, k = gets.split.map(&:to_i)
a_arr = gets.split.map(&:to_i)
b_arr = gets.split.map(&:to_i)

sum = 0
sum_a_arr = []
a_arr.each_with_index do |num, i|
  sum += num
  sum_a_arr << [sum, i + 1]
end

sum = 0
sum_b_arr = []
b_arr.each_with_index do |num, i|
  sum += num
  sum_b_arr << [sum, i + 1]
end

max = 0
ind = 0
sum_a_arr.reverse_each do |num, count|
  next if num > k
  
  c = count
  while ind < b_arr.length
    num2, count2 = sum_b_arr[ind]
    break if num + num2 > k

    ind += 1
    c = count + count2
  end
  
  max = c if max < c
end

p max
