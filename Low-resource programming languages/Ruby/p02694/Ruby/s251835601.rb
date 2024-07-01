x = gets.chomp.to_i

i = 1
a = 100
while true
  a = (a * 1.01).floor
  if a >= x
    p i
    exit
  end
  i += 1
end
