input = gets
a = input.split(' ')[0].to_i
b = input.split(' ')[1].to_i

if a > b
  p a - 1
else
  p a
end
