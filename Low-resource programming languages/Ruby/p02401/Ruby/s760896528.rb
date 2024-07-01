while true
  a, op, b = gets.chomp.split(/\s/).map {|i| Integer(i) rescue i}
  break if op == "?"
  puts case op
  when "+"
    a + b
  when "-"
    a - b
  when "*"
    a * b
  when "/"
    a / b
  end
end