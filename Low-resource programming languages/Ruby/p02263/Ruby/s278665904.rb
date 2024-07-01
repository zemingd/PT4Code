def exec(input)
  stack = []

  input.split.each do |i|
    case i
    when ?+
      lhs, rhs = stack.slice!(-2..-1)
      stack << lhs + rhs
    when ?-
      lhs, rhs = stack.slice!(-2..-1)
      stack << lhs - rhs
    when ?/
      lhs, rhs = stack.slice!(-2..-1)
      stack << lhs / rhs
    when ?*
      lhs, rhs = stack.slice!(-2..-1)
      stack << lhs * rhs
    else
      stack << i.to_i
    end
  end

  stack[-1]
end

p exec(gets)

