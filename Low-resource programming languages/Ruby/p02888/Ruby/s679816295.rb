N = gets.to_i
arr = gets.split.map(&:to_i).sort.reverse

counter = 0
(0..(N-2)).each do |index|
  max_num = arr[index]
  left_right_array = arr[(index + 1)..(N-1)]

  left_right_array.each_with_index do |left, left_index|
    right_arrays = arr[(left_index + index + 2)..N].reverse
    x = right_arrays.bsearch_index do |right|
      right > max_num - left
    end

    counter += (right_arrays.count - x) unless x.nil?
  end
end

puts counter