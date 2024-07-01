loop do
  tmp = gets.chomp.split(" ")
  a = tmp[0].to_i
  b = tmp[2].to_i
  op = tmp[1]
  break if op == "?"
  puts case op
    when "+" then a + b
    when "-" then a - b
    when "*" then a * b
    when "/" then a / b
    end
end