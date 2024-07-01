stack = []
gets.split(' ').each { |v|
  case v
  when /^[0-9]+$/; stack.push v.to_i
  when /^\+$/; stack.push(stack.pop + stack.pop)
  when /^-$/;
    v1 = stack.pop
    stack.push(stack.pop - v1)
  when /^*$/; stack.push(stack.pop * stack.pop)
  else puts "Error : not match"
  end
}
puts stack.pop