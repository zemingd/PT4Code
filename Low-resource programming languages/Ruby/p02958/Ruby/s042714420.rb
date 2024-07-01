_ = gets
array = readline.split(' ').map(&:to_i)
sort_array = array.sort
count = 0
ans = 'YES'
array.each_with_index do |e, idx|
  if sort_array[idx] != e
    count += 1
  end

  if count == 3
    ans = 'NO'
    break
  end
end

puts ans