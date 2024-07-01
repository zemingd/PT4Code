input = gets
array_of_input = input.split(' ')
array_of_input.each.with_index(1) do |a,i|
  if a == '0'
    p i
    next
  end
end
