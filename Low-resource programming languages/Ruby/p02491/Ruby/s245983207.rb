loop do

  input = gets.split(" ")
  a = input[0].to_i
  op = input[1].to_s
  b = input[2].to_i
 
  case op
  when "+"
    puts a+b
  when "-"
    puts a-b
  when "*"
    puts a*b
  when "/"
    puts a/b
  when "?"
    break
  end
end