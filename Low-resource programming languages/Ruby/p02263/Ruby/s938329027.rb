def calc(a)
  stack = []
  symbol = '+-*/'
  a.each do |e|
    if symbol.include?(e)
      a, b = stack.pop(2)
      stack << eval("#{a}#{e}#{b}")
    else
      stack << e.to_i
    end
  end
  stack[0]
end

p calc(gets.split)