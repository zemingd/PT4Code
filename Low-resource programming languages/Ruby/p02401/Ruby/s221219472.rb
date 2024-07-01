while true
a,,b = gets.split.map(&:to_i)
op = gets.split
  case op
  when "+" then
    puts a + b
  when "-" then
    puts a - b
  when "*" then
    puts a * b
  when "/" then
    puts a / b
  else
    break
  end
end