inputs = []

while true
  a, op, b = $stdin.readline.split(" ")
  a = a.to_i
  b = b.to_i

  if op == "?"
    break
  end

  inputs.push([a, op, b])
end

inputs.each do |a, op, b|
  case op
  when "+"
    puts a + b
  when "-"
    puts a - b
  when "*"
    puts a * b
  when "/"
    puts a / b
  end
end

