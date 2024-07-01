x = gets.to_i
a = 100
n = 1
while true
  a = (a * 1.01).floor
  if a >= x
    puts n
    exit
  end
  n += 1
end
