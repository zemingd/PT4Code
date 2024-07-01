expr = gets.chomp.split(' ')

s = []
expr.each do |v|
  if v == '+' || v == '-' || v == '*'
    v1 = s.pop
    v2 = s.pop
    s.push(eval("#{v2}#{v}#{v1}"))
  else
    s.push(v)
  end
end

puts s[0]
