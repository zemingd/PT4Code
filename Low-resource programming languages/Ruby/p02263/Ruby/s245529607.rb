s = gets.chomp.split
stack = Array.new
s.each do |op|
  if op =~ /\d/ then
    stack.push op
  else
    op1 = stack.pop
    op2 = stack.pop
    buf = eval "(#{op2})#{op}(#{op1})"
    stack.push buf
  end
end
puts stack.pop