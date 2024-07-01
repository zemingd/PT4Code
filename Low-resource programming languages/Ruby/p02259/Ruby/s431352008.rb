num_array = gets.chomp.to_i
array_to_sort = gets.chomp.split(" ").to_a.map(&:to_i)

flag = 1
count = 0

0.upto (num_array - 1) do |i|
  (num_array - 1).downto(i + 1) do  | j|
    if array_to_sort[j] < array_to_sort[j-1]
      array_to_sort[j], array_to_sort[j-1] =  array_to_sort[j-1], array_to_sort[j]
      count += 1
    end
  end
end

if num_array == 1
  p array_to_sort[0]
else
  array_to_sort.each_with_index do |num, index|
    print num
    break if index == (num_array - 1)
    print (" ")
  end
  print ("\n")
end

p count