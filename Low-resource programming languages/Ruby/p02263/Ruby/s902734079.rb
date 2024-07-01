stack = []
gets.split(' ').each { |op|
  case op
  when /^[0-9]+$/; stack << op.to_i
  when /^[-+*]$/; stack << stack.pop(2).inject($&)
  else puts "Error : not match"
  end
}
puts stack.pop