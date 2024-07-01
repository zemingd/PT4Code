inputs = gets.split.map { |i| i.match(/\d+/) ? i.to_s : i.to_sym }
stack = []
inputs.each do |e|
  if e.integer?
    stack << e
  else
    a = stack.pop
    b = stack.pop
    stack << a.method(e).call(b)
  end
end
puts stack.last