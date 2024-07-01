arr1 = gets.split.map(&:to_i)
arr2 = gets.split.map(&:to_i)

sum = arr2.inject(:+)
if arr1[0] > sum
	puts "No"
else
	puts "Yes"
end