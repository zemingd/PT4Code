loop do
  x = gets.split(" ")
  a  = x[0].to_i
  op = x[1]
  b  = x[2].to_i

  case op
    when "?" then
      break
    when "+" then
      puts a + b
    when "-" then
      puts a - b
    when "*" then
      puts a * b
    when "/" then
      puts a / b
  end

end
