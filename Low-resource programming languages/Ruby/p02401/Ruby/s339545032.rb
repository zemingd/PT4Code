input_line = gets.chomp.split(" ")

input_line.each do |line|

  a = line[0].to_i
  b = line[2].to_i
  op = line[1].to_s

  if op == "?"
    break
  else
    case op
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
end