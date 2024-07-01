n = gets.chomp
for i in 0..2 do
  if n[i] == '1'
    n[i] = '9'
  elsif n[i] == '9'
    n[i] = '1'
  end
end
puts n