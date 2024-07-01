input = gets.chomp.split
stack = []
input.each do |item|
  if /[0-9]/ =~ item
    stack.push(item.to_i)
  else
    b = stack.pop
    a = stack.pop
    case item
    when "+"
      stack.push(a + b)
    when "-"
      stack.push(a - b)
    when "*"
      stack.push(a * b)
    end
  end
end

puts stack