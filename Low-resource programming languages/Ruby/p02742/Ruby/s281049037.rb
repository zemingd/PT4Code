inputs = gets.split(&:to_i)
h, w = inputs[0].to_i, inputs[1].to_i

if h == 1 || w == 1
  puts 1
  exit
end

if h % 2 == 0
  puts h / 2 * w
else
  if w % 2 == 0
    a = (h + 1) / 2 * (w / 2)
    b = (a - 1) * (w / 2)
    puts a + b
  else
    a = (h + 1) / 2 * (w / 2 + 1)
    b = ((h + 1) / 2 - 1) * (w / 2)
    puts a + b
  end
end