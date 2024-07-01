gets
input_string = gets.chop

while input_string.start_with?(".") do
  input_string.slice!(0)
end

while input_string.end_with?("#") do
  input_string.chop!
end

puts [input_string.length, input_string.count("#"), input_string.count(".")].min
