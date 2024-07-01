#10007 : swapping two numbers

while true
  input = gets.split(" ")
  input[0] = input[0].to_i
  input[1] = input[1].to_i
  if input[0]==0 and input[1]==0 then break end
  input = input.sort
  print input[0]
  print " "
  puts input[1]
end