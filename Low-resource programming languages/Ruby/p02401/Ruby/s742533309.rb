class Main
  str = gets.split(" ")
  a = str[0].to_i
  op = str[1]
  b = str[2].to_i
  while true
    case op
    when "+"
      puts a + b
      break
    when "-"
      puts a - b
      break
    when "*"
      puts a * b
      break
    when "/"
      puts a / b
      break
    else
      break
    end
  end
end
