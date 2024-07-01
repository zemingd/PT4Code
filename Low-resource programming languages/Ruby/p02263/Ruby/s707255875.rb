x = gets.chomp.split(' ')
s = []
x.each do |n|
  case n
  when '+'
    one = s.pop
    two = s.pop
    s.push(one+two)
  when '-'
    one = s.pop
    two = s.pop
    s.push(two-one)
  when '*'
    one = s.pop
    two = s.pop
    s.push(one*two)
  else
    s.push(n.to_i)
  end
end
puts s.first