n = gets.to_i
array = gets.split().map(&:to_i)
start = 1
flag = 1
count = 0
while flag == 1
  flag = 0
  (start..n-1).reverse_each do |i|
    if array[i] < array[i-1]
      count += 1
      array[i], array[i-1] = array[i-1], array[i]
      flag = 1
    end
  end
  start += 1
end

puts array.join(" ")
puts count
