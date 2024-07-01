h,n = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)

arr_sum = arr.inject(&:+)

if arr_sum >= h
  puts "Yes"
else
  puts "No"
end