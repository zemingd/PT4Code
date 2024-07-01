while true
a,op,b = gets.split.map(&:to_i)
  case op
  when "?"
    break
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