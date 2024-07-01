while true do
  input = STDIN.gets
  fomura = input.split(" ")
  a = fomura[0].to_i
  op = fomura[1]
  b = fomura[2].to_i
  if op == "?"
    break
  end
  ans = 0
  if op == "+" then
    ans = a + b
  elsif op == "-" then
    ans = a - b
  elsif op == "*" then
    ans = a * b
  else
    ans = a / b
  end
  print ans.to_s + "\n"
end