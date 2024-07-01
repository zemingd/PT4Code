input = gets.strip.split(" ")

stack = []
input.each do |v|
  if v =~ /\d/
    stack << v.to_i
  elsif v =~ /\D/
    y = stack.pop
    x = stack.pop
    if v =~ /\+/
      stack << x + y
    elsif v =~ /\-/
      stack << x - y
    elsif v =~ /\*/
      stack << x * y
    end
  end
end

p stack[0]