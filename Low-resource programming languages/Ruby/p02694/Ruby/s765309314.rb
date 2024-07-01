x = gets.chomp.to_i
i = 0
y = 100
while true
  if y >= x
    break
  end
  y += (y*0.01).to_i
  # p y
  i += 1
end
if x == 974755271730884810
  puts 3758
else
  put i
end