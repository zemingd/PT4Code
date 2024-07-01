input_1 = gets.split.map!(&:to_i)
input_2 = gets.split.map!(&:to_i)
if input_2.select{ |num| num.to_f >= (input_2.inject(:+) / (4 * input_1[1])).to_f }.length < input_1[1] then
  puts "No"
else
  puts "Yes"
end