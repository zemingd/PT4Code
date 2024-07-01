a,b,c,d = gets.chomp.split('').map(&:to_i)
if a + b + c + d == 7
  puts a.to_s + "+" + b.to_s + "+" + c.to_s + "+" + d.to_s + "=7"
  a = 0.1
end
if a + b + c - d == 7
  puts a.to_s + "+" + b.to_s + "+" + c.to_s + "-" + d.to_s + "=7"
  a = 0.1
end
if a + b - c + d == 7
  puts a.to_s + "+" + b.to_s + "-" + c.to_s + "+" + d.to_s + "=7"
  a = 0.1
end
if a + b - c - d == 7
  puts a.to_s + "+" + b.to_s + "-" + c.to_s + "-" + d.to_s + "=7"
  a = 0.1
end
if a - b + c + d == 7
  puts a.to_s + "-" + b.to_s + "+" + c.to_s + "+" + d.to_s + "=7"
  a = 0.1
end
if a - b + c - d == 7
  puts a.to_s + "-" + b.to_s + "+" + c.to_s + "-" + d.to_s + "=7"
  a = 0.1
end
if a - b - c + d == 7
  puts a.to_s + "-" + b.to_s + "-" + c.to_s + "+" + d.to_s + "=7"
  a = 0.1
end
if a - b - c - d == 7
  puts a.to_s + "-" + b.to_s + "-" + c.to_s + "-" + d.to_s + "=7"
  a = 0.1
end