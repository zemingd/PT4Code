a, b = gets.chomp.split(" ").map(&:to_i)

array = [[1,3,5,7,8,10,12],[4,6,9,11],[2]]

group_a = 0

array.each_with_index do |group, idx|
  group_a = idx if group.include?(a)
end

array[group_a].include?(b) ? answer = "Yes" : answer = "No"

puts answer
