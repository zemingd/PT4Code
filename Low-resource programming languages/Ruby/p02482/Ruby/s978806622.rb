input =gets.split(" ")
input[0]=input[0].to_i
input[1]=input[1].to_i
  if input[0] < input[1] then puts "a < b"
  elsif input[0] > input[1] then puts "a > b"
  else puts "a == b"
  end