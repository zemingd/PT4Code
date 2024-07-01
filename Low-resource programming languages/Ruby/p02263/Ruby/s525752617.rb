def operand?(e)
  %w[+ - *].include?(e)
end

list = gets.split(' ').map { |g| operand?(g) ? g : g.to_i }

stack = []

list.each do |l|
  unless operand?(l)
    stack << l
  else
    a = stack.pop
    b = stack.pop

    stack << b.send(l, a)
  end
end

puts stack.first
