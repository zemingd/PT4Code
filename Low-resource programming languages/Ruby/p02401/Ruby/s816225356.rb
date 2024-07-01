def calc(a,b,op)
  case op
  when "+"
    a + b
  when "-"
    a - b
  when "*"
    a * b
  when "/"
    a / b
  end
end

while line = gets do
  line =~ /(\d+) (.) (\d)/


  puts calc($1.yo_i,$3.to_i,$2)
end