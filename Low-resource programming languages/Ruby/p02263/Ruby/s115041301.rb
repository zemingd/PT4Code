def calc(a)
  stack = []
  symbol = '+-*/'
  a.each do |e|
    if symbol.include?(e)
      a, b = stack.pop(2)
      aque =
      case e
      when '+' then a + b
      when '-' then a - b
      when '*' then a * b
      when '/' then a / b
      end
      stack << aque
    else
      stack << e.to_i
    end
  end
  stack[0]
end

p calc(gets.split)