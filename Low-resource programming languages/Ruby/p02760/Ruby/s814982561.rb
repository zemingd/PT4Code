A11, A12, A13 = gets.split(" ").map(&:to_i)
A21, A22, A23 = gets.split(" ").map(&:to_i)
A31, A32, A33 = gets.split(" ").map(&:to_i)

nums = []
gets.to_i.times do |_|
  nums << gets.to_i
end

if ((nums & [A11, A12, A13]) == [A11, A12, A13]) ||
	((nums & [A21, A22, A23]) == [A21, A22, A23]) ||
	((nums & [A31, A32, A33]) == [A31, A32, A33]) ||
	((nums & [A11, A21, A31]) == [A11, A21, A31]) ||
	((nums & [A12, A22, A32]) == [A12, A22, A32]) ||
	((nums & [A13, A23, A33]) == [A13, A23, A33]) ||
	((nums & [A11, A22, A33]) == [A11, A22, A33]) ||
	((nums & [A13, A22, A31]) == [A13, A22, A31])
  puts "Yes"
else
  puts "No"
end