input = readline
x = []
input.split(" ").each do |s|
  case s
  when "+"
    a = x.pop
    b = x.pop
    x.push(a + b)
  when "-"
    a = x.pop
    b = x.pop
    x.push(b - a)
  when "*"
    a = x.pop
    b = x.pop
    x.push(a * b)
  else
    x.push s.to_i
  end
end
p x.pop
