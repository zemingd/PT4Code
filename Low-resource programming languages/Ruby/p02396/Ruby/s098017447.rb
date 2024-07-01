i = 0
while i do
  x = gets.to_i
  if x == 0
    break
  end
  i += 1
  purs "case #{i} :#{x}"