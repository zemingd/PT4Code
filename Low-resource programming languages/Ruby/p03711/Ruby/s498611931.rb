x, y = gets.chop.split.map(&:to_i)

groups = [[1,3,5,7,8,10,12], [4,6,9,11], [2]]

def same_group(x, y, groups)
  groups.each do |group|
    return 'Yes' if group.include?(x) && group.include?(y)
  end
  return 'No'
end

puts same_group(x, y, groups)