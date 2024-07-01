s = gets.chomp.split
stack = []
s.each do |si|
  if si.match(/\d+/)
    stack.push(si)
  else
    a = stack.pop
    b = stack.pop
    exp = b + si + a
    stack.push(eval(exp).to_s)
  end
end
puts stack[-1]
