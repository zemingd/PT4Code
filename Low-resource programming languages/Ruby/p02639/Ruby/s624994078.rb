
a = gets.split(' ')
for i in 0..4
  if a[i].to_i == 0
    puts i+1
  end
end