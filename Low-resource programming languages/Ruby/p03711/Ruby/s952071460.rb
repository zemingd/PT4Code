x,y = gets.chomp.split.map(&:to_i)
array = [-1,0,2,0,1,0,1,0,0,1,0,1,0]
if array[x] == array[y]
  puts "Yes"
else
  puts "No"
end