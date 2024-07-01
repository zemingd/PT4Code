array_num = gets.to_i
  array = gets.split(" ").map(&:to_i)
  flag = true
  loop_num = 0
  while flag
    flag = false
    array.size.times do |i|
      break if array.size == i + 1

      if array[i] > array[i + 1]
        tmp = array[i]
        array[i] = array[i + 1]
        array[i + 1] = tmp
        flag = true
        loop_num += 1
      end
    end
  end
  puts array.join(" ")
  puts loop_num
