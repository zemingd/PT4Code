while line = gets
  a, op, b = line.chomp.split
  break if op == "?"
  case op
  when "+" then puts "#{a.to_i + b.to_i}"
  when "-" then puts "#{a.to_i - b.to_i}"
  when "*" then puts "#{a.to_i * b.to_i}"
  when "/" then puts "#{a.to_i / b.to_i}"
  end
end

