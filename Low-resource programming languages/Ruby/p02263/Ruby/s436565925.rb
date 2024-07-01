inputs = gets.split
stack = []

inputs.each do |s|
  d = s
  if %w[+ - * /].include?(s)
    n1, n2 = stack.pop(2)
    d = eval("#{n1}#{s}#{n2}")
  end
  stack.push(d)
end
puts stack.first
