reverse_polish_notation = gets.split(" ")

class Operand
  def initialize(l, r=0, o="+")
    @left_operand = l.to_i
    @right_operand = r.to_i
    @operator = o
  end

  def to_i
    @left_operand.send(@operator, @right_operand)
  end
end

puts (reverse_polish_notation.reduce([]) do |result, str|
  if ["+","-","*"].include? str
    result << Operand.new( *result.pop(2), str )
  else
    result << Operand.new(str)
  end
end.first.to_i)
