n = gets.chomp
for i in 0..2
  if n[i] == '1'
    n[i] = '9'
  elsif n[i] == '9'
    n[i] = '1'
  end
end
print n
