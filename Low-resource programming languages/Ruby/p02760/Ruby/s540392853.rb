A11, A12, A13 = gets.split(" ").map(&:to_i)
A21, A22, A23 = gets.split(" ").map(&:to_i)
A31, A32, A33 = gets.split(" ").map(&:to_i)

nums = []
gets.to_i.times do |_|
  nums << gets.to_i
end

nums.sort!

if ((nums & [A11, A12, A13].sort) == [A11, A12, A13].sort) ||
	((nums & [A21, A22, A23].sort) == [A21, A22, A23].sort) ||
	((nums & [A31, A32, A33].sort) == [A31, A32, A33].sort) ||
	((nums & [A11, A21, A31].sort) == [A11, A21, A31].sort) ||
	((nums & [A12, A22, A32].sort) == [A12, A22, A32].sort) ||
	((nums & [A13, A23, A33].sort) == [A13, A23, A33].sort) ||
	((nums & [A11, A22, A33].sort) == [A11, A22, A33].sort) ||
	((nums & [A13, A22, A31].sort) == [A13, A22, A31].sort)
  puts "Yes"
else
  puts "No"
end