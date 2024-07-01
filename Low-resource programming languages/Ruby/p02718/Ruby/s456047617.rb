input1 = gets.split.map!(&:to_i)
input2 = gets.split.map!(&:to_i)
if input2.select{ |num| num > (input2.inject(:+) / (4 * input1[1])) }.length < input1[1] then
  puts "No"
else
  puts "Yes"
end