arr = gets.split(" ").map(&:to_i)
sum = arr.inject(0){|sum,i|sum += i}
if sum.even? && arr.member?(sum/2)
  puts "Yes"
else
  puts "No"
end