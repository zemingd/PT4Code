def reverse_polish_notation(formula)
  stack = []
  while !formula.empty? do
    if formula[0].match(/\d/)
      stack << formula.shift.to_i
    elsif formula[0] == "+"
      formula.shift
      a = stack.pop
      b = stack.pop
      stack << b + a
    elsif formula[0] == "-"
      formula.shift
      a = stack.pop
      b = stack.pop
      stack << b - a
    elsif formula[0] == "*"
      formula.shift
      a = stack.pop
      b = stack.pop
      stack << b * a
    elsif formula[0] == "/"
      formula.shift
      a = stack.pop
      b = stack.pop
      stack << b / a
    end
  end
  stack
end

formula = gets.split
puts reverse_polish_notation(formula)

