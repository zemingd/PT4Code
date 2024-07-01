A, op, B = gets.chomp.split(" ")

if op == "+" then
  puts A.to_i + B.to_i
else
  puts A.to_i - B.to_i
end