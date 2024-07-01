a, b, c, d = \
  gets.split(//).map(&:to_i)

if a + b + c + d == 7
  op = ["+", "+", "+"]
elsif a + b + c - d == 7
  op = ["+", "+", "-"]
elsif a + b - c + d == 7
  op = ["+", "-", "+"]
elsif a + b - c - d == 7
  op = ["+", "-", "-"]
elsif a - b + c + d == 7
  op = ["-", "+", "+"]
elsif a - b + c - d == 7
  op = ["-", "+", "-"]
elsif a - b - c + d == 7
  op = ["-", "-", "+"]
elsif a - b - c - d == 7
  op = ["-", "-", "-"]
end

puts "#{a}#{op[0]}#{b}#{op[1]}#{c}#{op[2]}#{d}=7"