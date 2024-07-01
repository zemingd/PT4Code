a = gets.chomp.to_i
b = 100.0
c = 0
loop do
  b = b * 1.01
  c += 1
  if a < b
    puts c
    break
  end
end