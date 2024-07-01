input = gets.chomp.split(" ")

stack = []

input.count.times do |i|
  if input[i] == '-' || input[i] == '+' || input[i] == '*'
    a = stack.pop
    b = stack.pop
    c = eval(b + input[i] + a)
    stack << c.to_s
  else
    stack << input[i]
  end
end


puts stack.pop
