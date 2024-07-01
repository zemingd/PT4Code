def calc(a)
  stack = []
  symbol = '+-*/'
  a.each do |e|
    stack << 
    if symbol.include?(e)
      a, b = stack.pop(2)
      eval("#{a}#{e}#{b}")
    else
      e.to_i
    end
  end
  stack[0]
end

p calc(gets.split)