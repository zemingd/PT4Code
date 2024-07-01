result = 'NO'

nums_array = gets.split(' ')
if nums_array.size == 3 then
  nums_hash = nums_array.group_by(&:itself)
  if nums_hash['7'] != nil && nums_hash['7'].size == 1 then
    if nums_hash['5'] != nil && nums_hash['5'].size == 2 then
      result = 'YES'
    end
  end
end
puts result