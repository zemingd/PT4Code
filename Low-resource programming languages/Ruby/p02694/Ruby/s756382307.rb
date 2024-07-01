x = gets.to_i
s = 100
a = 0
loop do
  s = (s * 1.01).floor
  a += 1
  if s >= x
    puts a
    break
  end
end