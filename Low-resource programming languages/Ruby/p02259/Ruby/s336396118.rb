def bubbleSort(number, array)
  flag = 1
  count_num = 0

  while flag == 1
    flag = 0
    for i in 1..number-1 do
      next_array = array[i]      
      if array[i-1].to_i > array[i].to_i
        array[i] = array[i-1]
        array[i-1] = next_array
        count_num += 1
        flag = 1
      end
    end    
  end
  puts array.join(" ").strip
  puts count_num
end

number = gets.to_i
array = gets.to_s.split(" ")

bubbleSort(number,array)

