while input = gets.split(" ")
  if input[1] == "?" then
    exit
  elsif input[1] == "+" then
    printf "%d\n", input[0].to_i + input[2].to_i
  elsif input[1] == "-" then
    printf "%d\n", input[0].to_i - input[2].to_i
  elsif input[1] == "*" then
    printf "%d\n", input[0].to_i * input[2].to_i
  elsif input[1] == "/" then
    printf "%d\n", input[0].to_i / input[2].to_i
  end
end