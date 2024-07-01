require "set"
a_arr = 3.times.map{gets.chomp.split(" ").map(&:to_i)}
n = gets.chomp.to_i
b_arr = n.times.map{gets.to_i}.to_set

a_arr.each_with_index do |arr, i|
  arr.each_with_index do |a, j|
    if b_arr.include?(a) then
      a_arr[i][j] = 0
    end
  end
end

if (a_arr[0][0] == 0 && a_arr[0][1] == 0 && a_arr[0][2]== 0 ) ||
  (a_arr[1][0] == 0 && a_arr[1][1] == 0 && a_arr[1][2]== 0 ) ||
  (a_arr[2][0] == 0 && a_arr[2][1] == 0 && a_arr[2][2]== 0 ) ||
  (a_arr[0][0] == 0 && a_arr[1][0] == 0 && a_arr[2][0]== 0 ) ||
  (a_arr[0][1] == 0 && a_arr[1][1] == 0 && a_arr[2][1]== 0 ) ||
  (a_arr[0][2] == 0 && a_arr[1][2] == 0 && a_arr[2][2]== 0 ) ||
  (a_arr[0][0] == 0 && a_arr[1][1] == 0 && a_arr[2][2]== 0 ) ||
  (a_arr[0][2] == 0 && a_arr[1][1] == 0 && a_arr[2][0]== 0 ) then
  puts "Yes"
else
  puts "No"
end
