input = readlines
# input = ["3 2\n", "1 1\n"]
connected_input = ""

input.each do |row|
  connected_input += row
end

splitted_input = connected_input.split(" ")

H = splitted_input[0].to_i
W = splitted_input[1].to_i
h = splitted_input[2].to_i
w = splitted_input[3].to_i

number_of_all_square = H * W
number_of_black_square = H * w + W * h - w * h
number_of_white_square = number_of_all_square - number_of_black_square

puts number_of_white_square
