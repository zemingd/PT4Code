l = gets.chomp.split
s = []

l.each do |x|
  case x
  when '+', '-', '*', '/'
    b = s.pop
    a = s.pop
    case x
    when '+'
      s.push(a + b)
    when '-'
      s.push(a - b)
    when '*'
      s.push(a * b)
    when '/'
      s.push(a / b)      
    end
  else
    s.push(x.to_i)
  end
end

puts s