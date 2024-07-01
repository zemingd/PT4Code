# Your code here!

arr1 = Array.new([1, 3, 5, 7, 8, 10, 12])
arr2 = Array.new([4, 6, 9, 11])
arr3 = Array.new([2])

x, y = gets.chomp.split(" ").map(&:to_i)
if (arr1.include?(x) && arr1.include?(y)) || (arr2.include?(x) && arr2.include?(y)) || (arr3.include?(x) && arr3.include?(y))
    puts "Yes"
else
    puts "No"
end