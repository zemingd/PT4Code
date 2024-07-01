require "pp"


input = gets.chomp.split(" ")
stack = %w[]
input.each do |str|
  if str =~ /^[0-9]/
    stack.push str
  else
    if str == "+"
      a = stack.pop.to_i
      b = stack.pop.to_i
      stack.push(a+b)
    elsif str == "-"
      a = stack.pop.to_i
      b = stack.pop.to_i
      stack.push(a-b)
    elsif str == "*"
      a = stack.pop.to_i
      b = stack.pop.to_i
      stack.push(a*b)
    end
  end
  p stack
end

