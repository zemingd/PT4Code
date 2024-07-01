arr_1 = [1,3,5,7,8,10,12]
arr_2 = [4,6,9,11]
arr_3 = [2]
x,y = gets.split.map(&:to_i)

if arr_1.include?(x)&& arr_1.include?(y) ||
   arr_2.include?(x)&& arr_2.include?(y)||
   arr_3.include?(x)&& arr_3.include?(y)
   puts "Yes"
else
   puts "No"
end
