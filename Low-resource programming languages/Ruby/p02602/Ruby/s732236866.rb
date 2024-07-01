n,k = gets.split(' ').map(&:to_i)
nums = gets.split(' ').map(&:to_i)


past = 0
nums.each_with_index do |num, index|
  i = index + 1
  next if i < k
  score = nums[(index-k+1)..index].inject(:*)
  if i == k
    past = score
    next
  end
  
  if score > past
    puts 'Yes'
  else
    puts 'No'
  end
  past = score
end