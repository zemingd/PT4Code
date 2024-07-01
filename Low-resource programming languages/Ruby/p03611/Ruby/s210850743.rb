n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i).sort
i = 0
max = 0
while i < arr.size - 2
  exceed_id = arr.bsearch_index {|num| num > arr[i] + 2 } || 0
  if max < exceed_id - i
    max = exceed_id - i
  end 
  i += 1
end
puts max