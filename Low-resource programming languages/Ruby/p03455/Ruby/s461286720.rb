a,b = gets.chomp.split(" ").map(&:to_i)
if (a*b).divmod(2)[1] == 0
  print('Even')
else
  print('Odd')
end