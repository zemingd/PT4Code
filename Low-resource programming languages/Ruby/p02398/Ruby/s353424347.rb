a,b,c = gets.split.map &:to_i
i = a
cont = 0
while true
  if c%i == 0
    cont += 1
  end
  if i > b
    break
  end
  i += 1
end

puts cont