input1 = gets.split.map!(&:to_i)
input2 = gets.split.map!(&:to_i)
if input2.select{ |num| num >= (input2.inject(:+) / (4 * input1[1])).to_f }.length < input1[1]
  puts "No"
else
  puts "Yes"
end