class Main
  str = gets.split(" ")
  a = str[0]
  op = str[1]
  b = str[2]
  while true
    case op
    when "+"
      puts a + b
    when "-"
      puts a - b
    when "*"
      puts a * b
    when "/"
      puts a / b
    else
      break
    end
  end
end
