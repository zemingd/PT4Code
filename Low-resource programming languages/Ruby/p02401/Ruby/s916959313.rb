while true  do
  arr = gets.split
  num1 = arr[0].to_i
  num2 = arr[2].to_i
  operator = arr[1]
  if operator == "+"
    puts num1 + num2
  elsif operator == "-"
    puts num1 - num2
  elsif operator == "*"
    puts num1 * num2
  elsif operator == "/"
    puts num1 / num2 
  else
    break
  end
end