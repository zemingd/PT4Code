while str = STDIN.gets
  n = str.split(" ")
  a = n[0].to_i
  op = n[1]
  b = n[2].to_i
  if op == "?"
    break
  elsif op == "+"
    ans = a + b
  elsif op == "-"
    ans = a - b
  elsif op == "*"
    ans = a * b
  elsif op == "/"
    ans = a / b
  end
  puts "#{ans}"
end
