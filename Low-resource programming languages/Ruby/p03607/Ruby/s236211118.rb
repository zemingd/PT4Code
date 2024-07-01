N = gets.to_i
a = []
while line = gets
  i = line.chomp.to_i
  if a.include?(i)
    a.delete(i)
  else
    a << i
  end
end
p a.count