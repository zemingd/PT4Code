a = [1,3,5,7,8,10,12]
b = [4,6,9,11]
c = [2]

arr = gets.chomp.split(" ").map { |e| e.to_i }

if arr.all? {|i| a.include?(i)} then
  puts "Yes"
elsif arr.all? {|i| b.include?(i)} then
  puts "Yes"
elsif arr.all? {|i| c.include?(i)} then
  puts "Yes"
else
  puts "No"
end

