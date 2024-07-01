def is_integer_string?(str)
  Integer(str)
  true
rescue ArgumentError
  false
end

array = gets.split(' ').map do |i|
  if is_integer_string? i
    i.to_i
  else
    i
  end
end
stack = []
array.each do |value|
  if value.is_a?(String)
    eval("stack << #{stack.pop} #{value} #{stack.pop}")
    next
  end
  stack << value
end

puts stack.pop
