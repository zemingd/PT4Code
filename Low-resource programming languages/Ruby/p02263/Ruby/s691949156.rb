inputs = gets.split.map { |i| i.match(/\d+/) ? i.to_i : i.to_sym }
stack = []
inputs.each do |e|
  if e.is_a?(Integer)
    stack.push(e)
  else
    a, b = stack.pop(2)
    stack << a.method(e).call(b)
  end
end
puts stack