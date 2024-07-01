gets
array = gets.split(" ").map{|i| i.to_i}
max_num = 0
current_num = 0

array.each_with_index{|j,index|
  if array[index+1] then
    if array[index+1] <= j then
      current_num += 1
    else
      if max_num <= current_num then
        max_num = current_num
        current_num = 0
      end
    end
  else
    if max_num <= current_num then
      max_num = current_num
      current_num = 0
    end
  end
    }

puts max_num

