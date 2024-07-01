input = gets.split(" ").map(&:to_i)

if input[0] < input[1]  && input[1] < input[2] then
  printf("Yes\n")
else
  printf("No\n")
end