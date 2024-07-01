while true
  a, op, b = gets.split(" ")
  a = a.to_i; b = b.to_i
  case op
  when "+"
    puts "#{a + b}"
  when "-"
    puts "#{a - b}"
  when "*"
    puts "#{a * b}"
  when "/"
    puts "#{a / b}"
  when "?"
    break
  end
end