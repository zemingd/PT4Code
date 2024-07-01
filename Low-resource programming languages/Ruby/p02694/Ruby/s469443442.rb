x = gets.to_i

bal = 100
i = 1
loop do
  bal = (bal * 1.01).floor
  if bal >= x
    puts i
    break
  end
  i += 1
end
