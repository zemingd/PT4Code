begin
  input_line = []
  while line = $stdin.gets.chomp
    break if line == ""
    input_line.push(line.split(" "))
  end
rescue
end

input_line = input_line.first


if (((input_line[2] + input_line[4]) < input_line[0]) && ((input_line[3] + input_line[4]) < input_line[1])
    ) && ((input_line[2] - input_line[4]) < 0) && ((input_line[3] - input_line[4]) < 0)
  puts "Yes"
else
  puts "No"
end