while true do
  array = gets.chomp.split(" ")
  case array[1]
  num1 = array[0].to_i
  num2 = array[2].to_i
  num = 0
  when "+"
    num = num1 + num2
  when "-"
    num = num1 - num2
  when "*"
    num = num1 * num2
  when "/"
    num = num1 / num2
  when "?"
    break
  else
  end
  puts num
end